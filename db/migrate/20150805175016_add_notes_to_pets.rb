class AddNotesToPets < ActiveRecord::Migration
  def change
    add_column :pets, :notes, :text
  end
end
