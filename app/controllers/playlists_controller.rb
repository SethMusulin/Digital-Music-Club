class PlaylistsController < ApplicationController

  def index
    @playlists= Playlist.order(name: :desc)
  end
  def new
    @playlist = Playlist.new
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

  def mass_email
    PlaylistMailer.playlist_email.deliver
    flash[:notice] = "Emails Delivered"
    redirect_to new_playlist_path
  end

  def destroy
    Playlist.destroy(params[:id])
    redirect_to '/playlists/new'
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :creator, :picture, :source, songs_attributes: [:id, :artist, :title])
  end
end

