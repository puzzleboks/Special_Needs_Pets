class AddNeedIdToTreatments < ActiveRecord::Migration
  def change
    add_column :treatments, :need_id, :integer
  end
end
