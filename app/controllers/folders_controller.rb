class FoldersController < ApplicationController
  before_action :company_folders, only: [:index, :new, :create, :show, :destroy]
  respond_to :html, :js

  def new
    @folder = current_company.folders.build
  end

  def create
    @folder = current_company.folders.build(folder_params)
    respond_to do |format|
      if @folder.save
        flash[:success] = "Folder successfuly created"
        format.html { redirect_to folders_path, folder: @folder }
      else
        flash[:danger] = "Folder not created."
        render action: 'new'
      end
    end
  end

  def show
    @folder = company_folders.find(params[:id])
  end

  def index
    if params[:folder]
      @folder = company_folders.find(params[:folder])
      @document = @folder.documents.build
      @documents = @folder.documents
    end
  end

  def destroy
    @folder = @folders.find_by(id: params[:id])
    @folder.destroy
    redirect_to folders_path
  end
  private

    def company_folders
      @folders = current_company.folders
    end
    def folder_params
      params.require(:folder).permit(:name)
    end
end