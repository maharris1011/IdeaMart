class CommentsController < ApplicationController
  before_action :set_idea, only: [:show, :create, :destroy]
  before_action :set_comment, only: [:show, :destroy]
  before_action :authenticate_user!

  def index
    @comments = @idea.comments
  end

  def show; end

  # POST /ideas
  # POST /ideas.json
  def create
    @comment = @idea.comments.build(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @idea, notice: 'Your comment has been recorded' }
        format.json { render action: 'show', status: :created, comment: @comment }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @comment.user == current_user
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to @idea, notice: 'Your comment has been removed' }
        format.json { head :no_content }
      end
    end
  end

  # GET /ideas/new
  def new
    @comment = Comment.new
    @comment.user = current_user
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def set_idea
    @idea = Idea.find(params[:idea_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:idea_id, :user_id, :description)
  end
  end
