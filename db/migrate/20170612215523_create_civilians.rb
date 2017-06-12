class CreateCivilians < ActiveRecord::Migration
  def change
    create_table :civilians do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city

      t.timestamps null: false
    end
  end
end
