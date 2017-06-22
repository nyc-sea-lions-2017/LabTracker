class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @proposal = Proposal.find_by(id: params[:proposal_id].to_i)
    @experiment = Experiment.find_by(id:params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me)
  end
end
