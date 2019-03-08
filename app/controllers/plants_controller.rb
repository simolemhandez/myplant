class PlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  skip_after_action :verify_authorized, only: :index

  def index
    @search = { name: params[:name], origin: params[:origin] }
    if @search.values.uniq.first.nil?
      @plants = policy_scope(Plant)
    else
      @plants = policy_scope(Plant).where(name: params[:name], origin: params[:origin])
    end

    @myplants = Plant.where.not(latitude: nil, longitude: nil)

    @markers = @myplants.map do |plant|
      {
        lng: plant.longitude,
        lat: plant.latitude
      }
    end
  end

  def show
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    authorize @plant
    @plant.save
    redirect_to root_path
  end

  def edit
    @plant = Plant.find(params[:id])
    authorize @plant
  end

  def update
    @plant = Plant.find(params[:id])
    authorize @plant
    @plant.update(plant_params)
    redirect_to plant_path(@plant)
  end

  def destroy
    @plant = Plant.find(params[:id])
    authorize @plant
    @plant.destroy
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:id, :name, :description, :origin, :availability, :pricepermonth, :address, :photo, :photo_cache)
  end
end
