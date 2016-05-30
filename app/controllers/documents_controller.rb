class DocumentsController < ApplicationController
  before_action :correct_folder, only: [:index, :create, :destroy]
  respond_to :html, :js

  def index
    @documents = @folder.documents
    @document = @documents.build
  end

  def create
    @document = @folder.documents.build(document_params)
    respond_to do |format|
      if @document.save
        format.html { render action: 'index', notice: "Document created!" }
        format.js {}
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: 'index'}
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @document = @folder.documents.find_by(id: params[:id])
    @document.destroy
    respond_to do |format|
      format.html {render action: 'index', notice: "Document has been deleted." }
      format.js {}
    end
  end

  private

    def correct_folder
      @folder = company_folders.find(params[:folder_id])
    end

    def document_params
      params.require(:document).permit(:file, :name)
    end
end
