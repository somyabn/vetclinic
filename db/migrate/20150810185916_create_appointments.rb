class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :DateOfVisit
      t.integer :pet_id
      t.integer :customer_id
      t.text :reasonForVisit
      t.integer :docter_id

      t.timestamps null: false
    end
  end
end
