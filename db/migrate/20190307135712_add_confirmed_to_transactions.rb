class AddConfirmedToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :confirmed, :boolean
  end
end
