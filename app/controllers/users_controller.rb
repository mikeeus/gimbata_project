class UsersController < ApplicationController
  before_action :redirect_if_not_admin

  def index
    @permission = Permission.new
  end

  def destroy
    @user = @users.find(params[:id])
    @user.destroy
    if @user.destroy 
      redirect_to users_path, notice: "User deleted"
    end
  end

  private

end
