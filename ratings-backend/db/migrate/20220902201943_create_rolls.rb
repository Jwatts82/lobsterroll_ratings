class CreateRolls < ActiveRecord::Migration[7.0]
  def change
    create_table :rolls do |t|
      t.string :description
      t.string :city
      t.integer :price
      t.integer :rating
      t.integer :roll_id
      
      t.timestamps
    end
  end
end
