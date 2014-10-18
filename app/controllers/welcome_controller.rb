class WelcomeController < ApplicationController

  def index
    @playlists = Playlist.order("id ASC")
    @user = User.new
  end

end