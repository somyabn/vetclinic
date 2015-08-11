class AddCustomerIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :customer_id, :integer
    add_index :pets, :customer_id
  end
end
