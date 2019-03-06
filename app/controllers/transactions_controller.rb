class TransactionsController < ApplicationController

  def index
    @transactions = policy_scope(Transaction)
  end

  def new
    @plant = Plant.find(params[:plant_id])
    @transaction = Transaction.new
    authorize @transaction
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.plant_id = @plant.id
    @transaction.user_id = current_user.id
    authorize @transaction
    if @transaction.save
      redirect_to transactions_path
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date, :time, :rating, :user_id, :plant_id)
  end
end
