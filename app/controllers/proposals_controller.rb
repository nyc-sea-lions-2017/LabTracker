class ProposalsController < ApplicationController
  def new
    @user = current_user
    @proposal = @user.proposals.new
  end

  def create
    @user = params[:proposal][:user]
    @proposal = Proposal.new(proposal_params)

    @proposal.save
    redirect_to(@proposal , notice: 'Proposal was successfully created.')
  end

  def update
    @user = params[:user]
    @proposal = Proposal.find(params[:id])
    @proposal.update(proposal_params)
    redirect_to(@proposal, notice: 'Proposal was successfully updated.')
  end

  def edit
    @user = current_user
    @proposal = Proposal.find(params[:id])
  end

  def destroy
    @user = current_user
  end

  def index
    @user = current_user
    @proposals = Proposal.all
  end

  def show
    @user = current_user
    @proposal = Proposal.find_by(id: params[:id])
  end
  
  private
    def proposal_params
      params.require(:proposal).permit(:title, :summary, :user_id, :status, :hypothesis)
    end
end
