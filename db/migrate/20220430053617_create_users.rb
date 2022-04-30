class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.boolean :status
      t.string :password

      t.timestamps
    end
    add_index :users, :name
    add_index :users, :email
  end
end
