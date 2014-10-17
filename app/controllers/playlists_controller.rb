class PlaylistsController < ApplicationController


  def new
    @playlist = Playlist.new
    @submissions = Submission.all
  end

  def create

    @playlist = Playlist.new(playlist_params)
    @playlist.source = @playlist.source.split[16][7...-1]
    if @playlist.save
      redirect_to root_path
    end
  end

  def show

  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :creator, :picture, :source, songs_attributes: [:id, :artist, :title])
  end
end

