class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      # Advert (by Partner) attributes
      t.string :type
      t.string :label
      t.text :informations
      t.integer :sender_id
      t.string :sender_type
      t.references :adress, index: true
      t.timestamps null: false

      # Proposal attributes
      t.string :category # food, clothes, etc.
      t.datetime :expiration_date

      # Offer (by Association) attributes
      t.integer :quantity

      # Donation (by Resident, Association or Partner) attributes
      t.references :product, index: true
      t.references :beneficiary, index: true
      # t.references :reserved_by
      t.boolean :is_reserved
      t.boolean :is_given

      # Clothes attributes
      t.string :size
    end
  end
end
