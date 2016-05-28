class FoldersController < ApplicationController
  respond_to :html, :js

  def show
    @folder = current_company.folders.find(params[:id])
  end

  def index
    @folders = current_company.folders
  end
end
