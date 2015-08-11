class CreateDocters < ActiveRecord::Migration
  def change
    create_table :docters do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip
      t.text :school
      t.datetime :yip

      t.timestamps null: false
    end
  end
end
