class UsersController < ApplicationController

  def create
    @user = User.new
    @user.email = params[:user][:email]
    if @user.save
      flash[:notice] = "Thanks for joining the DMC"
      redirect_to root_path
    else
      flash[:notice] = "You are already a member"
      @playlists = Playlist.order(name: :desc)
      redirect_to root_path
    end


  end
end