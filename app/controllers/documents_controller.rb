class DocumentsController < ApplicationController
  before_action :correct_folder, only: [:index, :create]
  respond_to :html, :js

  def index
    @documents = @folder.documents
    @document = @documents.build
  end

  def create
    @document = @folder.documents.build(document_params)
    UploadDocument.new(@document).upload
  end

  private

    def correct_folder
      @folder = company_folders.find(params[:folder_id])
    end

    def document_params
      params.require(:document).permit(:file, :name)
    end
end
