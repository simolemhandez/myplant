class PlantsController < ApplicationController
    def index
    @plants = plant.all
  end

  def show
    @plant = plant.find(params[:id])
  end

  def new
    @plant = plant.new
  end

  def create
    @plant = plant.new(plant_params)
    @plant.save
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:id, :name, :location, :contact)
  end
end
