class WelcomeController < ApplicationController

  def index
    @song_play=Song.last
    @playlists = Playlist.all

  end

end