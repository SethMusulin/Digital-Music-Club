class UsersController < ApplicationController

  def index
    @user = User.all
  end

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

  def destroy
    if User.destroy(params[:id])
      flash[:notice] = "User Deleted"
      redirect_to new_playlist_path
    else
      flash[:notice] = "There was a problem, better call Seth"
      render users_path
    end
  end
end