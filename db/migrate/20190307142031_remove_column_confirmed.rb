class RemoveColumnConfirmed < ActiveRecord::Migration[5.2]
  def change
    remove_column :transactions, :confirmed
  end
end
