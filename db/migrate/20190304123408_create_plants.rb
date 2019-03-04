class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :origin
      t.boolean :availability
      t.integer :pricepermonth
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
