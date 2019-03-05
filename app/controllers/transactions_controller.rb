class TransactionsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description, :cocktail_id)
  end

end
