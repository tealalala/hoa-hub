class Api::BylawsController < ApplicationController
  def index
    @bylaws = Bylaw.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @bylaw = Bylaw.new(
      section: params[:section],
      description: params[:description],
      status: false,
      date_proposed: Date.parse(params[:date_proposed]),
      date_approved: Date.parse(params[:date_approved]),
      association_id: params[:association_id],
      user_id: params[:user_id]
    )
    @bylaw.save
    render 'show.json.jbuilder'
  end

  def show
    @bylaw = Bylaw.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @bylaw = Bylaw.find_by(id: params[:id])
    @bylaw.update(
      section: params[:section],
      description: params[:description],
      status: false,
      date_proposed: Date.parse(params[:date_proposed]),
      date_approved: Date.parse(params[:date_approved]),
      association_id: params[:association_id],
      user_id: params[:user_id]
    )
    @bylaw.save
    render 'show.json.jbuilder'
  end

  def destroy
    @bylaw = Bylaw.find_by(id: params[:id])
    @bylaw.destroy
    render 'destroy.json.jbuilder'
  end
end
