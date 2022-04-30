class NewAnnouncementsTabel < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.belongs_to :user
      t.belongs_to :car
      t.string  :purpose
      t.string  :location
      t.integer :rating
      t.integer :ban, default: false
      t.boolean :hot_sale
      t.boolean :visibility, default: true

      t.timestamps
    end
    add_index :announcements, :purpose
    add_index :announcements, :location
  end
end
