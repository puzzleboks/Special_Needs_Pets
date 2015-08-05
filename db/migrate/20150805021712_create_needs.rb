class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :kind
      t.string :symptoms
      t.timestamps null: false
    end
  end
end
