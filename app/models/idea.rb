class Idea < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	scope :most_popular, -> {select("ideas.*, count(votes.id) AS votes_count").
    						joins(:votes).group("ideas.id").order("votes_count DESC")}

	scope :newest, -> {order('created_at DESC')}

	state_machine :initial => :spark do 
		event :submit do
			transition :spark => :proposed
		end
		event :approve do
			transition :proposed => :approved
		end
		event :defer do 
			transition :proposed => :deferred
		end

		event :decline do 
			transition [:deferred, :proposed] => :declined
		end

		event :restart do
			transition [:deferred, :declined] => :proposed
		end
		
		event :start_work do
			transition :approved => :in_development
		end

		event :deliver do
			transition :in_development => :done
		end

		state :proposed do
			validates_presence_of :problem, :solution, :customer_segments, :high_level_concept
		end

	end
end
