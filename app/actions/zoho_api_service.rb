# require 'net/http'
# require 'uri'

# class ZohoApiService
#   attr_accessor :api_key, :current_user

#   def initialize(document)
#     @document = document
#     @folder = document.folder
#   end

#   def zoho_edit
#     uri = URI.parse(@url)
#     params = { apikey: @apikey, 
#                output: @output, 
#                mode: @mode,
#                filename: @filename,
#                lang: "en",
#                id: @id,
#                format: @format,
#                saveurl: @url
#               }
#     return Net::HTTP.post_form(uri, params)
#   end
  
  
#   private
#     def apikey
#       @apikey = "14429e369be91199e238ed416a579a84"
#     end

#     def zoho_params
#       @output = "url"
#       if current_user.role == "admin"
#         @mode = "normaledit"
#       else
#         @mode = "view"
#       end
#       @filename = @document.file_file_name
#       # id is returned to the saveurl and can be used in update action
#       # current_user.id to identify editing user, @document.id to identify document
#       @id = "#{current_user.id}/#{@document.id}"
#       @saveurl = folder_document_path(@folder, @document)
#     end

#     def api_url
#       content_type = @document.file_content_type
#       sheet = ["xls", "excel", "spreadsheetml"]
#       writer = ["msword", "doc", "pdf"]
#       # show = [powerpoint formats] ( url: https://show.zoho.com/show/remotedoc.im )
#       if sheet.any? { |format| content_type.include? format }
#         @url = "https://sheet.zoho.com/sheet/remotedoc.im"
#       elsif writer.any? { |format| content_type.include? format }
#         @url = "https://writer.zoho.com/writer/remotedoc.im"
#       else
#         return "Sorry format is not supported."
#       end
#     end

#     def api_format
#       content_type = @document.file_content_type
#       if content_type.include?("xlsx")
#         @format = "xlsx"
#       elsif content_type.include?("xls")
#         @format = "xls"
#       elsif content_type.include?("spreadsheetml")
#         @format = "ods"
#       elsif content_type.include?("pdf")
#         @format = "pdf"
#       elsif content_type.include?("doc") || content_type.include?("msword")
#         @format = "doc"
#       elsif content_type.include?("text/plain") || content_type.include?("file/text")
#         @format = "txt"
#       end
#     end
# end