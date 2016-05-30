class Document < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file,
      styles: { thumb: "100x100#", small: "150x150#"},
      content_type: { content_type: [
        "application/pdf", "application/xls", "application/xlsx", 
        "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 
        "application/msword", "application/doc",  
        "text/plain","file/text", "image/jpg", "image/jpeg", 
        "image/png", "image/gif", "text/csv"]},
      message: "Sorry, only Images (png, gif, jpeg or png), PDF, Excel, MSWord or plain text files are allowed."


  def icon_url
    if !self.file_content_type.nil?
      content_type = self.file_content_type.sub('/','_')
      url = "#{content_type}.png"
      if File.exists? url
        url
      else
        "icon_default.png"
      end
    else
      "icon_default.png"
    end
  end
end
