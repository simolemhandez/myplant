class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]
  skip_after_action :verify_authorized, only: [:home, :index]
  def home
    @plants = Plant.first(6)
  end
end
