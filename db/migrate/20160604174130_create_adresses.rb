class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :street
      t.string :postal_code
      t.string :city
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
