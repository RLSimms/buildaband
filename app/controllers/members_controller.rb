class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find_by_id(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new
    @member.band_id = params[:band_id]
    @member.musician_id = params[:musician_id]
    
    if @member.save
            redirect_to members_url
          else
      render 'new'
    end
  end

  def edit
    @member = Member.find_by_id(params[:id])
  end

  def update
    @member = Member.find_by_id(params[:id])
    @member.band_id = params[:band_id]
    @member.musician_id = params[:musician_id]
    
    if @member.save
            redirect_to members_url
          else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find_by_id(params[:id])
    @member.destroy
        redirect_to members_url
      end
end
