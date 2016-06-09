class DashboardController < ApplicationController
  before_action :load_activities, only: [:dashboard]
  respond_to :html, :js
  
  def dashboard
    unless current_user.admin?
      redirect_to folders_path
    end
    @documents = @company.documents.order('updated_at DESC')
  end

  def settings
  end

  def permissions
    
  end

  private
    def load_activities
      if current_user && current_user.admin?
        @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
      end
    end
end