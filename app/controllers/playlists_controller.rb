class PlaylistsController < ApplicationController


  def new
    @playlist = Playlist.new
    @playlists= Playlist.order(name: :desc)
    @submissions = Submission.all.where(published:false).order("id ASC")
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
  def edit
    @playlist = Playlist.find(params[:id])

  end

  def update
    @playlist = Playlist.find(params[:id])
    @playlist.update(playlist_params)
    if @playlist.save
      redirect_to '/playlists/new'
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :creator, :picture, :source, songs_attributes: [:id, :artist, :title])
  end
end

