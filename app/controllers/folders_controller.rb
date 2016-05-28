class FolderController < ApplicationController

  def show
    @folder = current_company.folders.find(params[:id])
  end

  def index
    @folders = current_company.folders
  end

  private

end
