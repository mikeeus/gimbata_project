class ZohoService

  attr_accessor :document

  def initialize(document)
    @document = document
    @content_type = document.file_content_type
  end

  def file_format
    if @content_type.include?("xlsx")
      "xlsx"
    elsif @content_type.include?("xls") || @content_type.include?("excel")
      "xls"
    elsif @content_type.include?("spreadsheetml")
      "ods"
    elsif @content_type.include?("pdf")
      "pdf"
    elsif @content_type.include?("doc") || @content_type.include?("msword")
      "doc"
    elsif @content_type.include?("text/plain") || @content_type.include?("file/text")
      "txt"
    elsif content_file = nil
      "nil"
    end
  end

  def zoho_url
    if @content_type.include?("xlsx") || @content_type.include?("xls") || @content_type.include?("excel") || @content_type.include?("spreadsheetml")
      "https://sheet.zoho.com/sheet/remotedoc.im"
    elsif @content_type.include?("doc") || @content_type.include?("msword")
      "https://writer.zoho.com/writer/remotedoc.im"
    else
      "unsupported file type"
    end
  end

end