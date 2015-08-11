class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.float :age
      t.float :weight
      t.datetime :dateOfLastVisit

      t.timestamps null: false
    end
  end
end
