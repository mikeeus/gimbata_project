class DocumentsController < ApplicationController
  before_action :correct_folder, only: [:index, :create, :destroy]
  respond_to :html, :js

  def index
    @documents = @folder.documents
    @document = @documents.build
  end

  def create
    @document = @folder.documents.build(document_params)
    if @document.save
      flash[:success] = "Document created!"
      redirect_to folders_path
    else
      flash[:danger] = "Document upload not successful."
      redirect_to folders_path
    end
  end

  def destroy
    @document = @folder.documents.find_by(id: params[:id])
    @document.destroy
    flash[:success] = "Document has been deleted."
    redirect_to folders_path
  end

  private

    def correct_folder
      @folder = company_folders.find(params[:folder_id])
    end

    def document_params
      params.require(:document).permit(:file, :name)
    end
end
