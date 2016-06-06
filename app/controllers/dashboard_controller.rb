class DashboardController < ApplicationController
  respond_to :html, :js
  
  def dashboard
    @document = Document.find(94)
    @documents = Document.all
  end
end