class PermissionsController < ApplicationController
  respond_to :html, :js
  
  def create
    # @permission = @user.permissions.build    
  end

  def destroy
    @permission = Permission.find_by_id(params[:id])
    @permission.destroy
  end
end
