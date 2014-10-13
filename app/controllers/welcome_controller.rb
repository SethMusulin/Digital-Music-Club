class WelcomeController < ApplicationController

  def index
    @playlists = Playlist.all
    @user = User.new
  end

end