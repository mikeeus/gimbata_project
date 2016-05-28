class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string   :name,         null: false, unique: true
      t.string   :phone_number
      t.string   :address
      t.string   :city
      t.string   :country
      t.string   :description
      
      t.timestamps null: false
    end
  end
end
