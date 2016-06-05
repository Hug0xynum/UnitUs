class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :owner_type
      t.integer :owner_id
    #  t.references :user
      t.references :availability
      t.timestamps null: false
    end
  end
end
