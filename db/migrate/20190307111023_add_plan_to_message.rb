class AddPlanToMessage < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :plant, foreign_key: true
  end
end
