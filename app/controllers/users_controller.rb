class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  def admin_page
    @users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
    redirect_to admin_path
  end

  private
  	def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :is_member)
    end
end 