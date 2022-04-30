class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.belongs_to :user
      t.belongs_to :announcement
      t.timestamps
    end
  end
end
