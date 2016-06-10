class PermissionsController < ApplicationController
  before_action :redirect_if_not_admin
  respond_to :html, :js
  
  def create
    @user = @users.find_by_id(params[:user_id])
    @permission = Permission.new(folder_id: params[:folder_id], user_id: params[:user_id])
    @permission.save
  end

  def destroy
    @permission = Permission.find_by_id(params[:id])
    @permission.destroy
  end

  private
    def permission_params
      params.require(:permission).permit(:folder_id, :user_id)
    end
end
