class Document < ActiveRecord::Base
  belongs_to :folder
  has_attached_file :file
  validates_attachment :file,
      styles: { thumb: "100x100#", small: "150x150#"},
      content_type: { content_type: [
        "application/pdf", "application/xls", "application/xlsx", 
        "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 
        "application/msword", "application/doc",  
        "text/plain", "text/csv"]},
      message: "Sorry, only PDF, Excel, MSWord or plain text files are allowed."

  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user }

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

  def doc_or_spreadsheet?
    content_type = self.file_content_type
    if content_type.include?("xlsx") || content_type.include?("xls") || content_type.include?("excel") || content_type.include?("spreadsheetml") || content_type.include?("doc") || content_type.include?("msword")
      true
    else
      false
    end
  end

  # Permissions
  def can_be_accessed_by?(user)
    # the parent folder should have an attribute to track permitted users
    self.folder.can_be_accessed_by?(user)
  end

end