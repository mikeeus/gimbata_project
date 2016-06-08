class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :disable_sidebar, if: :devise_controller?
  before_action :authenticate_user! # disable on homepage
  before_action :current_company

  include PublicActivity::StoreController
  include ApplicationHelper



  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:company_id, :avatar])
      devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
      # Add avatar as a permitted parameter
    end

end
