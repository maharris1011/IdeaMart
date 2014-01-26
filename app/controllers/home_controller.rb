class HomeController < ApplicationController
  def index
  	@ideas = Idea.all.order(:created_at)
  end
end
