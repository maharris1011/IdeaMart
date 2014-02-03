class HomeController < ApplicationController
  def index
  	@ideas = Idea.most_popular.limit(3)
  	@new_ideas = Idea.newest.limit(3)
  end

  def show
  end
  
end
