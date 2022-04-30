class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.integer :user_id
      t.integer :announcement_id
      t.string  :purpose
      t.string  :location
      t.integer :rating
      t.integer :ban
      t.boolean :hot_sale
      t.boolean :visibility

      t.timestamps
    end
    add_index :announcements, :purpose
    add_index :announcements, :location
  end
end
