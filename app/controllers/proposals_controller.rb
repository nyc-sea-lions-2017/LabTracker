class ProposalsController < ApplicationController
  def new
    set_user
    @proposal = @user.proposal.new
  end

  def create
    set_user
  end

  def update
    set_user
  end

  def edit
    set_user
  end

  def destroy
    set_user
  end

  def index
    set_user
    @proposals = Proposal.all
  end

  def show
    set_user
  end
end
