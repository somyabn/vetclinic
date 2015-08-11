class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.integer :customer_id
      t.integer :pet_id

      t.timestamps null: false
    end
  end
end
