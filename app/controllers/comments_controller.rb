class CommentsController < ApplicationController
  def new
    @user = current_user
    if params[:proposal_id]
      @proposal = Proposal.find_by(id: params[:proposal_id])
      @comment = @proposal.comments.new
    elsif params[:experiment_id]
      @experiment = Experiment.find_by(id: params[:experiment_id])
      @comment= @experiment.comments.new
    elsif params[:observation_id]
      @observation = Observation.find_by(id: params[:observation_id])
      @comment = @observation.comments.new
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
      @comment.save
      redirect_to @proposal
    elsif params[:experiment_id]
      @experiment = Experiment.find_by(id: params[:experiment_id])
      @proposal = @experiment.proposal
      @comment= @experiment.comments.new(comment_params)
      @comment.save
      redirect_to proposal_experiment_path(@proposal, @experiment)
    elsif params[:observation_id]
      @observation = Observation.find_by(id: params[:observation_id])
      @comment = @observation.comments.new(comment_params)
      @comment.save
      redirect_to @observation
    end
  end

  def update
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @thing = @comment.commentable
    # @route = @type.find_by(id: @comment.commentable_id)
    @comment.destroy
    redirect_to @thing
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :commentable_id, :commenter_id, :commentable_type)
    end
end
