class Idea < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	scope :most_popular, select("ideas.*, count(votes.id) AS votes_count").
    						joins(:votes).group("ideas.id").order("votes_count DESC")

	scope :newest, Idea.order('created_at DESC')
end
