class PlaylistsController < ApplicationController


  def new
    @playlist = Playlist.new
    10.times { @playlist.songs.build }
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      redirect_to root_path
    end
  end
end

private

def playlist_params
  params.require(:playlist).permit(:name, :creator, songs_attributes: [:id, :artist, :title])
end