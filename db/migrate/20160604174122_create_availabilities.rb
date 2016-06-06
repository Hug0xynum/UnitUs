class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day
      t.string :part_of_day
      t.integer :begin, array: true # hour
      t.integer :end, array: true # hour
      t.timestamps null: false
    end
  end
end
