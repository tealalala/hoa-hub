class CcrsController < ApplicationController
  def index
    @ccrs = Ccr.all
    render 'index.html.erb'
  end

  def show
    @ccr = Ccr.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    @ccr = Ccr.all
    render 'new.html.erb'
  end

  def create
    @ccr = Ccr.new(
      section: params[:section],
      description: params[:description],
      date_proposed: Date.parse(params[:date_proposed]),
      # date_approved: Date.parse(params[:date_approved]),
      status: false,
      association_management_id: params[:association_management_id],
      user_id: params[:user_id]
    )
    @ccr.save
    redirect_to '/ccrs/#{@ccr.id}'
  end

  def edit
    @ccr = Ccr.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @ccr = Ccr.find_by(id: params[:id])
    @ccr.section = params[:section] || @ccr.section
    @ccr.description = params[:description] || @ccr.description
    @ccr.date_proposed = Date.parse(params[:date_proposed]) || @ccr.date_proposed
    @ccr.date_approved = Date.parse(params[:date_approved]) || @ccr.date_approved
    @ccr.status = false
    @ccr.association_management_id = params[:association_management_id] || @ccr.association_management_id
    @ccr.user_id = params[:user_id] || @ccr.user_id
    @ccr.save
    redirect_to '/ccrs'
  end

  def destroy
    @ccr = Ccr.find_by(id: params[:id])
    @ccr.destroy
    redirect_to '/ccrs'
  end
end
