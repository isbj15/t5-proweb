class CreateCivilianInterests < ActiveRecord::Migration
  def change
    create_table :civilian_interests do |t|
      t.references :civilian, index: true, foreign_key: true
      t.references :interest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
