class WelcomeController < ApplicationController

  def index
    @playlists = Playlist.order(name: :desc)
    @user = User.new
  end

end