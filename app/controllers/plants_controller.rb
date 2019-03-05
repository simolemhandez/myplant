class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.save
    redirect_to plant_path(plant)
  end

  private

  def plant_params
    params.require(:plant).permit(:id, :name, :location, :contact)
  end
end
