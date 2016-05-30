class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.belongs_to :company, index: true, foreign_key: true

      t.string :name, null: false, default: "Folder"

      t.timestamps null: false
    end
  end
end
