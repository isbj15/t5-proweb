class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :civilian, index: true, foreign_key: true
      t.string :job_name

      t.timestamps null: false
    end
  end
end
