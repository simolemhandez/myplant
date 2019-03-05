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

  def plant_params
    params.require(:plant).permit(:id, :name, :location, :photo, :photo_cache)
  end
end
