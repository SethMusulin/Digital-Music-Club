class WelcomeController < ApplicationController

  def index
    @song_play=Song.last
    @playlist = Playlist.all
    @flashvars = "hostname=grooveshark.com&playlistID=101556751&p=0&bbg=000000&bth=000000&pfg=000000&lfg=000000&bt=ffffff&pbg=ffffff&pfgh=ffffff&si=ffffff&lbg=ffffff&lfgh=ffffff&sb=ffffff&bfg=666666&pbgh=666666&lbgh=666666&sbh=666666"
    @title = "Nick's Picks - Volume 5"
  end

end