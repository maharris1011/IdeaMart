class Idea < ActiveRecord::Base
  belongs_to :user
  belongs_to :launchpad_sponsor, class_name: 'User'
  has_many :comments

  validates_presence_of :high_level_concept, :user

  has_many :votes

  scope :most_popular, lambda {
                         select('ideas.*, sum(votes.score) AS score')
                           .joins(:votes).group('ideas.id').order('score DESC')
                       }

  scope :newest, -> { order('created_at DESC') }

  state_machine :state, initial: :spark do
    event :submit do
      transition spark: :proposed
    end
    event :approve do
      transition proposed: :approved
    end
    event :defer do
      transition %i[approved proposed] => :deferred
    end

    event :decline do
      transition %i[approved deferred proposed] => :declined
    end

    event :restart do
      transition %i[approved deferred declined done] => :spark
    end

    event :start_work do
      transition approved: :in_development
    end

    event :deliver do
      transition in_development: :done
    end

    state :spark do
      def name
        'spark'
      end
    end

    state :proposed do
      validates_presence_of :problem,
                            :solution,
                            :customer_segments,
                            :high_level_concept
      # validates :score, numericality: {
      #   greater_than: 5,
      #   message: '-- Ideas must have more than 5 votes to be considered'
      # }
    end

    state :in_development do
      validates_presence_of :unique_value_prop, :key_metrics, :story_url
    end
  end

  def do_event(event)
    return unless event

    state_events << event.parameterize.underscore.to_sym
    fire_state_event(event.parameterize.underscore.to_sym)
  end

  def score
    votes.sum('score')
  end
end
