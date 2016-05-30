class UploadDocument

  def initialize(document)
    @document = document
  end

  def upload
    if @document.save
      flash[:success] = "Document created!"
      redirect_to folders_path
    else
      flash[:danger] = "Document upload not successful."
      redirect_to folders_path
    end
  end
end