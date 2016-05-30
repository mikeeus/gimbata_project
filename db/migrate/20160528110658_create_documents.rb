class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.belongs_to :folder, index: true, foreign_key: true
      
      t.string :name, null:false, default: "Document"

      t.timestamps null: false
    end
  end
end
