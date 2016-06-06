class DashboardController < ApplicationController
  respond_to :html, :js
  
  def dashboard
    @document = Document.find(72)
  end
end