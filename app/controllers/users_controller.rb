class UsersController < ApplicationController
  before_action :redirect_if_not_admin

  def show
  end

  def index
    @permission = Permission.new
  end

  def edit
    
  end

  def update
    
  end

  private

end
