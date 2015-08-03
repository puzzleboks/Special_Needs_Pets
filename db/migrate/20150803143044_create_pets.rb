class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.belongs_to :user
      t.string :name
      t.string :breed
      t.string :pict_url
      t.string :vet
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
