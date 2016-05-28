class DocumentsController < ApplicationController
  respond_to :html, :js

  def index
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)

    # if @document.save
    #   # redirect_to @document
    #   flash.now[:success] = "Document created!"
    # else
    #   flash.now[:danger] = "Document upload not successful."
    # end
  end

  private
    def document_params
      params.require(:document).permit(:file, :name)
    end
end
