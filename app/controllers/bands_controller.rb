class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find_by_id(params[:id])
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.image = params[:image]
    @band.hometown = params[:hometown]

    if @band.save
            redirect_to bands_url
          else
      render 'new'
    end
  end

  def edit
    @band = Band.find_by_id(params[:id])
  end

  def update
    @band = Band.find_by_id(params[:id])
    @band.name = params[:name]
    @band.image = params[:image]
    @band.hometown = params[:hometown]

    if @band.save
            redirect_to bands_url
          else
      render 'edit'
    end
  end

  def destroy
    @band = Band.find_by_id(params[:id])
    @band.destroy
        redirect_to bands_url
      end
end
