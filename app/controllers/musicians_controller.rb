class MusiciansController < ApplicationController

  def index
    @musicians = Musician.all
  end

  def show
    @musician = Musician.find_by_id(params[:id])
  end

  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.new
    @musician.name = params[:name]
    @musician.instrument = params[:instrument]
    
    if @musician.save
            redirect_to musicians_url
          else
      render 'new'
    end
  end

  def edit
    @musician = Musician.find_by_id(params[:id])
  end

  def update
    @musician = Musician.find_by_id(params[:id])
    @musician.name = params[:name]
    @musician.instrument = params[:instrument]
    
    if @musician.save
            redirect_to musicians_url
          else
      render 'edit'
    end
  end

  def destroy
    @musician = Musician.find_by_id(params[:id])
    @musician.destroy
        redirect_to musicians_url
      end
end
