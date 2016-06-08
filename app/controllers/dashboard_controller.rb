class DashboardController < ApplicationController
  respond_to :html, :js
  
  def dashboard
    unless current_user.admin?
      redirect_to folders_path
    end
    @documents = @company.documents.order('updated_at DESC')
  end

  def settings
  end
end