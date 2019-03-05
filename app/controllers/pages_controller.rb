class PagesController < ApplicationController
  def home
    @plants = Plant.first(6)
  end
end
