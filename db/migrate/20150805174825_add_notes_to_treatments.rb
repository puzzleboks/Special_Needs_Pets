class AddNotesToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :notes, :text
  end
end
