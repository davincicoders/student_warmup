class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age

      t.timestamps null: false
    end
  end
end
