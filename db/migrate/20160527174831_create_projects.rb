class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :company, index: true, foreign_key: true
      
      t.string   :name,            null: false
      t.string   :location,        null: false
      t.string   :description
      t.string   :client
      t.string   :consultant

      t.timestamps null: false
    end
  end
end
