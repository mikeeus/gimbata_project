class DisplayDocument

  def initialize(document)
    @document = document
  end

  def icon
    # image_tag @document.file_content_type
  end
  
  # in production
  def s3_icon_path(style = file.default_style)
    
  end

  # in development
  def generic_icon_path(style = file.default_style)
    url = "/images/documents/icon.#{style.to_s}.#{file.content_type.sub('/', '.')}.png"
    if File.exists? "~/app/assets/#{url}"
      url
    else
      "/images/documents/icon.#{style.to_s}.default.png"
    end
  end

end