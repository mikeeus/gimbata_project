class CompanyController < ApplicationController
  respond_to :html, :js
  def show
    @company = current_company
  end

  def files
    
  end
end
