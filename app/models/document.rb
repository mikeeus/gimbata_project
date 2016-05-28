class Document < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file, 
                       content_type: { content_type: ["application/pdf", "application/vnd.ms-excel", "application/msword", "text/plain"]}
end
