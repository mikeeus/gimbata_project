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

  # def generic_icon_path(style = file.default_style)
  #   url = "/images/documents/icon.#{style.to_s}.#{file.content_type.sub('/', '.')}.png"
  #   if File.exists? "~/app/assets/#{url}"
  #     url
  #   else
  #     "/images/documents/icon.#{style.to_s}.default.png"
  #   end
  # end
  
end
