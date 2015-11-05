class AddGenderToPupils < ActiveRecord::Migration
  def change
    add_column :pupils, :gender, :string
  end
end
