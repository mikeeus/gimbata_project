class Document < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file, 
                       content_type: { content_type: ["application/pdf", "application/xls", "application/xlsx", "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "application/msword", "text/plain", "text/csv"]},
                       message: "Only PDF, Excel, MSWord or plain text files are allowed."
end
