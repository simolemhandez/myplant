class UsersController < ApplicationController
  def profile
    @user = current_user
    authorize @user
  end

  def editprofile
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to profile_path
  end
end
