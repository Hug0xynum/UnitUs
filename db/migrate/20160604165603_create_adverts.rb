class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      # Advert (by Partner) attributes
      t.string :type
      t.string :label
      t.text :informations
      t.references :sender, index: true
      t.references :adress, index: true
      t.timestamps null: false

      # Proposal attributes
      t.string :category # food, clothes, etc.
      t.datetime :expiration_date

      # Offer (by Association) attributes
      t.integer :quantity

      # Donation (by Resident) attributes
      t.references :beneficiary, index: true
      t.boolean :is_reserved
      t.boolean :is_given

      # Clothes attributes
      t.string :size
    end
  end
end
