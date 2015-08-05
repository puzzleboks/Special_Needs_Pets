class AddPetsIdToNeeds < ActiveRecord::Migration
  def change
    add_column :needs, :pet_id, :integer
  end
end
