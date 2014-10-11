class PlaylistsController < ApplicationController


  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      redirect_to root_path
    end
  end

  def show

  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :creator, songs_attributes: [:id, :artist, :title])
  end
end
