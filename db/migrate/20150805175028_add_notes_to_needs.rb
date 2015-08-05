class AddNotesToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :notes, :text
  end
end
