class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # User attributes
      t.string :type, null: false
      t.string :username
      t.string :encrypted_password
      t.string :salt
      t.timestamps null: false

      # Person attributes
      t.string :first_name
      t.string :last_name
      t.datetime :birth_date

      # Beneficiary attributes
      t.integer :limit_reservations

      # Resident attributes
      t.string :mail

      # Partner attributes
      t.string :public_name
      t.string :specific_name
      t.boolean :is_closed
      t.integer :limit_ads
      t.integer :limit_stock
      t.boolean :has_fridge, default: false
      t.integer :limit_fridge
      t.boolean :is_association
    end
  end
end
