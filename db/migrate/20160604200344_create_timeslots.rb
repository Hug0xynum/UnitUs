class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.string :owner_type
      t.integer :owner_id
      t.references :availability
      t.timestamps null: false
    end
  end
end
