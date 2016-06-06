class DashboardController < ApplicationController
  respond_to :html, :js
  
  def dashboard
    @document = Document.first
  end
end