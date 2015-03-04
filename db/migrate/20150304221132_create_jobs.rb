class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :state
      t.references :city, index: true
      
      t.timestamps null: false
    end
    add_foreign_key :jobs, :cities
  end
end
