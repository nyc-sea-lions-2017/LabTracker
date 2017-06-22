class CommentsController < ApplicationController
  def new
    @user = current_user
    if params[:proposal_id]
      @proposal = Proposal.find_by(id: params[:proposal_id])
      @comment = @proposal.comments.new
    elsif params[:experiment_id]
      @experiment = Experiment.find_by(id: params[:experiment_id])
    elsif params[:observation_id]
      @observation = Observation.find_by(id: params[:observation_id])
    end
  end

  def edit
  end

  def show
  end

  def create
    @user = current_user
    if params[:proposal_id]
      @proposal = Proposal.find_by(id: params[:proposal_id])
      @comment = @proposal.comments.new(comment_params)
    elsif params[:experiment_id]
      @experiment = Experiment.find_by(id: params[:experiment_id])
    elsif params[:observation_id]
      @observation = Observation.find_by(id: params[:observation_id])
    end

    @comment.save
    redirect_to @comment.commentable
  end

  def update
  end

  def destroy
    comment = Comment.find_by(id: params[:id])
    route = comment.commentable
    comment.destroy
    redirect_to route
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :commentable_id, :commenter_id, :commentable_type)
    end
end
