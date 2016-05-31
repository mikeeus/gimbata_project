class FoldersController < ApplicationController
  respond_to :html, :js

  def show
    @folder = company_folders.find(params[:id])
  end

  def index
    @folders = company_folders
    if params[:folder]
      @folder = company_folders.find(params[:folder])
      @document = @folder.documents.build
      @documents = @folder.documents
    end
  end

  private

end