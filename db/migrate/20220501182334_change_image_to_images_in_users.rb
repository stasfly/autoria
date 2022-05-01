class ChangeImageToImagesInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :image, :images
  end
end
