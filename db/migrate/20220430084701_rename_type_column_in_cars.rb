class RenameTypeColumnInCars < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :type, :vehicle_type
  end
end
