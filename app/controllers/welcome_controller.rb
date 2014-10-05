class WelcomeController < ApplicationController

  def index
    @song_play=Song.last
    @playlist = Playlist.all
  end

end