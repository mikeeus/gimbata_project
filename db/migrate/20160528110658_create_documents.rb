class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.belongs_to :folder, index: true, foreign_key: true
      
      t.string :name

      t.timestamps null: false
    end
  end
end
