class DocumentsController < ApplicationController
  before_action :correct_folder_and_documents, only: [:index, :create, :destroy]
  respond_to :html, :js

  def index
    @document = @documents.build
  end

  def create
    @document = @folder.documents.build(document_params)
    respond_to do |format|
      if @document.save
        flash[:success] = "File successfuly uploaded!"
        format.html { redirect_to controller: 'folders', action: 'index', remote: true, folder: @folder }
        format.js {}
      else
        flash[:danger] = "File not uploaded."
        format.html { redirect_to controller: 'folders', action: 'index', remote: true, folder: @folder }
        format.js {}
      end
    end
  end

  def destroy
    @document = @folder.documents.find_by(id: params[:id])
    @document.destroy
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private

    def correct_folder_and_documents
      @folder = company_folders.find(params[:folder_id])
      @documents = @folder.documents
    end

    def document_params
      params.require(:document).permit(:file, :name)
    end
end
