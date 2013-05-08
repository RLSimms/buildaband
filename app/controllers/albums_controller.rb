class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find_by_id(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new
    @album.name = params[:name]
    @album.band_id = params[:band_id]
    @album.image = params[:image]

    if @album.save
            redirect_to albums_url
          else
      render 'new'
    end
  end

  def edit
    @album = Album.find_by_id(params[:id])
  end

  def update
    @album = Album.find_by_id(params[:id])
    @album.name = params[:name]
    @album.band_id = params[:band_id]
    @album.image = params[:image]

    if @album.save
            redirect_to albums_url
          else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find_by_id(params[:id])
    @album.destroy
        redirect_to albums_url
      end
end
