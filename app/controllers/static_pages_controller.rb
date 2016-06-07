class StaticPagesController < ApplicationController
  before_action :redirect_to_dashboard
  skip_before_filter :authenticate_user!

  def homepage
  end

  private
    def redirect_to_dashboard
      if user_signed_in?
        redirect_to folders_path
      end
    end
end
