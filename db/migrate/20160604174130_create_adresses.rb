class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :postal_code
      t.string :city
      t.string :category
      t.integer :owner_id
      t.string :owner_type
      t.timestamps null: false
    end
  end
end
