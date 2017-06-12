class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.references :civilian, index: true, foreign_key: true
      t.integer :size
      t.string :brand

      t.timestamps null: false
    end
  end
end
