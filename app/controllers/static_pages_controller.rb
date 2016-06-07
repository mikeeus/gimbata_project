class StaticPagesController < ApplicationController
  before_action :redirect_to_dashboard, only: [:homepage]
  skip_before_filter :authenticate_user!, only: [:homepage]

  def homepage
  end

  private
    def redirect_to_dashboard
      if user_signed_in?
        if current_user.admin?
          redirect_to dashboard_path
        else
          redirect_to folders_path
        end
      end
    end
end
