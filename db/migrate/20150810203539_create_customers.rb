class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :name
      t.integer :docter_id

      t.timestamps null: false
    end
  end
end
