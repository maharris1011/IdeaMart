class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /ideas
  # GET /ideas.json
  def index
    @ideas = if params[:state]
               Idea.where(state: params[:state].to_s)
             else
               Idea.all
             end
  end

  # GET /ideas/1
  # GET /ideas/1.json
  def show
    @vote = @idea.votes.where(user: current_user).first

    if @vote.nil?
      @vote = Vote.new
      @vote.user = current_user
      @vote.idea = @idea
    end

    @comments = @idea.comments.order(created_at: :desc)
    @comment = Comment.new(user: current_user)
  end

  # GET /ideas/new
  def new
    @idea = Idea.new
    @idea.user = current_user
  end

  # GET /ideas/1/edit
  def edit; end

  # POST /ideas
  # POST /ideas.json
  def create
    @idea = Idea.new(idea_params)
    @idea.votes.build(user: current_user, score: 1)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to ideas_url, notice: 'Idea was successfully created.' }
        format.json { render action: 'show', status: :created, location: @idea }
      else
        format.html { render action: 'new' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideas/1
  # PATCH/PUT /ideas/1.json
  def update
    respond_to do |format|
      @idea.do_event(params[:event])

      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideas/1
  # DELETE /ideas/1.json
  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'That idea was destroyed!' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_idea
    @idea = Idea.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def idea_params
    params.require(:idea).permit(:id, :title, :user_id, :solution, :problem, :high_level_concept, :unique_value_prop, :unfair_advantage,
                                 :early_adopters, :existing_alternatives, :key_metrics, :channels, :cost_structure, :revenue_streams,
                                 :customer_segments, :state, :launchpad_sponsor_id, :story_url)
  end
end
