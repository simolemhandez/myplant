class RemoveColumnTimeFromTransactions < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :time
  end
end
