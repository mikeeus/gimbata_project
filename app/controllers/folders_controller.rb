class FoldersController < ApplicationController
  respond_to :html, :js

  def new
    @folder = @folders.build
  end

  def create
    @folder = @folders.build(folder_params)
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
    @folder = @folders.find(params[:id])
  end

  def index
    if params[:folder]
      @folder = @folders.find(params[:folder])
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
      @folders = @company.folders
    end
    def folder_params
      params.require(:folder).permit(:name)
    end

end