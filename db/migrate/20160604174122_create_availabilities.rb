class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day
      t.string :part_of_day
      t.integer :begin # hour
      t.integer :end # hour
      t.timestamps null: false
    end
  end
end
