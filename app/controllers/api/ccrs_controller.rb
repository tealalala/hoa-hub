class Api::CcrsController < ApplicationController
  def index
    @ccrs = Ccr.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @ccr = Ccr.new(
      section: params[:section],
      description: params[:description],
      date_proposed: Date.parse(params[:date_proposed]),
      date_approved: Date.parse(params[:date_approved]),
      status: false,
      association_management_id: params[:association_management_id],
      user_id: params[:user_id]
    )
    @ccr.save
    render 'show.json.jbuilder'
  end

  def show
    @ccr = Ccr.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @ccr = Ccr.find_by(id: params[:id])
    @ccr.update(
      section: params[:section],
      description: params[:description],
      date_proposed: Date.parse(params[:date_proposed]),
      date_approved: Date.parse(params[:date_approved]),
      status: false,
      association_management_id: params[:association_management_id],
      user_id: params[:user_id]
    )
    @ccr.save
    render 'show.json.jbuilder'
  end

  def destroy
    @ccr = Ccr.find_by(id: params[:id])
    @ccr.destroy
    render 'destroy.json.jbuilder'
  end
end
