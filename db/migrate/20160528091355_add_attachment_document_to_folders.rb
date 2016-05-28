class AddAttachmentDocumentToFolders < ActiveRecord::Migration
  def self.up
    change_table :folders do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :folders, :document
  end
end
