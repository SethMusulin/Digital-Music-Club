class WelcomeController < ApplicationController

  def index
    @song = Song.new
    @song_play=Song.last
  end

end