class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @proposals = Proposal.where(user: @user.id)
    @experiments = Experiment.where(experimenter_id: @user.id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me)
  end
end
