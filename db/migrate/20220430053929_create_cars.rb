class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string  :brand
      t.string  :model
      t.integer :age
      t.string  :engine
      t.string  :color
      t.string  :type
      t.string  :condition
      t.string  :description
      t.string  :image
      t.string  :video
      t.float   :price

      t.timestamps
    end
    add_index :cars, :brand
    add_index :cars, :model
    add_index :cars, :age
    add_index :cars, :engine
    add_index :cars, :type
  end
end
