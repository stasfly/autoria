class RemoveColumnInCars < ActiveRecord::Migration[6.1]
  def change
    remove_column(:cars, :user_id)
  end
end
