class FoldersController < ApplicationController
  respond_to :html, :js

  def show
    @folder = company_folders.find(params[:id])
  end

  def index
    @folders = company_folders
  end

  private

end
