class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true, foreign_key: true

      t.string  :subject
      t.string  :content
      t.string  :commented_page

      t.timestamps null: false
    end
  end
end