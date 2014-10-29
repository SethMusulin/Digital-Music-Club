class UsersController < ApplicationController

  def create
    @user = User.new
    @user.email = params[:user][:email]
    if @user.save
      flash[:notice] = "Thanks for joining the DMC, you have been added to the list"
      redirect_to root_path
    end


  end
end