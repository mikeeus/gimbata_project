class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.integer :company_id
      t.integer :project_id

      t.string :name, null: false, default: "Reports"
      t.timestamps null: false
    end
  end
end
