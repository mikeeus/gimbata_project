class Folder < ActiveRecord::Base
  belongs_to :company
  has_attached_file :document
  validates_attachment :document, 
                       content_type: { content_type: ["application/pdf", "application/vnd.ms-excel", "application/msword", "text/plain"]}

end
