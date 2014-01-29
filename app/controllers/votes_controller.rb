class VotesController < ApplicationController
	before_action :set_idea, only: [:show, :create, :destroy]
	before_action :set_vote, only: [:show, :destroy]

	def index
		@votes = @idea.votes
	end

	def show
	end

	# POST /ideas
	# POST /ideas.json
	def create
		@vote = Vote.new(:idea => @idea, :user => current_user, :score => params[:score])

		respond_to do |format|
		  if @vote.save
		    format.html { redirect_to @idea, notice: 'Your vote has been recorded' }
		    format.json { render action: 'show', status: :created, vote: @vote }
		  else
		    format.html { render action: 'new' }
		    format.json { render json: @vote.errors, status: :unprocessable_entity }
		  end
		end
	end

	def destroy
		if @vote.user == current_user then
	    	@vote.destroy
		    respond_to do |format|
		      format.html { redirect_to @idea, notice: 'Your vote has been removed' }
		      format.json { head :no_content }
		    end
		end
	end

  private
      # Never trust parameters from the scary internet, only allow the white list through.
    def set_idea
    	@idea = Idea.find(params[:idea_id])
    end

    def set_vote
    	@vote = Vote.find(params[:id])
    end

    def vote_params
    	params.require(:vote).permit(:idea_id, :score)
    end

end
