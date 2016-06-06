class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :label
      t.text :informations
      t.integer :limit_date
      t.timestamps null: false
    end
  end
end
