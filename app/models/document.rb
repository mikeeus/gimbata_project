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
        "image/png", "image/gif", "text/csv", "text/comma-separated-values"]},
      message: "Sorry, only Images (png, gif, jpeg or jpg), PDF, Excel, MSWord or plain text files are allowed."

  def file_format
    content_type = self.file_content_type
    if content_type.include?("xlsx")
      return "xlsx"
    elsif content_type.include?("xls") || content_type.include?("excel")
      return "xls"
    elsif content_type.include?("spreadsheetml")
      return "ods"
    elsif content_type.include?("pdf")
      return "pdf"
    elsif content_type.include?("doc") || content_type.include?("msword")
      return "doc"
    elsif content_type.include?("text/plain") || content_type.include?("file/text")
      return "txt"
    elsif content_file = nil
      return "nil"
    end
  end

end