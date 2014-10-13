class UsersController < ApplicationController

  def create
    @user = User.new
    @user.email = params[:user][:email]
    @user.save
    redirect_to root_path

  end
end