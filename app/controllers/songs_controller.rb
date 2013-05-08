class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find_by_id(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new
    @song.name = params[:name]
    @song.band_id = params[:band_id]
    @song.album_id = params[:album_id]
    
    if @song.save
            redirect_to songs_url
          else
      render 'new'
    end
  end

  def edit
    @song = Song.find_by_id(params[:id])
  end

  def update
    @song = Song.find_by_id(params[:id])
    @song.name = params[:name]
    @song.band_id = params[:band_id]
    @song.album_id = params[:album_id]
    
    if @song.save
            redirect_to songs_url
          else
      render 'edit'
    end
  end

  def destroy
    @song = Song.find_by_id(params[:id])
    @song.destroy
        redirect_to songs_url
      end
end
