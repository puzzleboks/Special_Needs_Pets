class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :medicine
      t.string :dosage
      t.string :every
      t.timestamps null: false
    end
  end
end
