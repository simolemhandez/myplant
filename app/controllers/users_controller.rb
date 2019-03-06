class UsersController < ApplicationController
  def profile
    @user = current_user
    authorize @user
  end

  def go_to_profile
    @user = User.find(params[:id])
    authorize @user
  end

  # def user_params
  #   params.require(:plant).permit(:id, :name, :location, :photo, :photo_cache)
  # end
end
