class SongsController < ApplicationController


  def create
    @song = Song.new
    @song.artist= params[:song][:artist]
    @song.title = params[:song][:title].gsub(" ","%20")
    if @song.save
    redirect_to root_path
    end
    end


  end