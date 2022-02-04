class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :name
      t.string :engine
      t.integer :seats
      t.integer :price
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
