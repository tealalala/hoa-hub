class Api::BylawsController < ApplicationController
  before_action :authenticate_user, only: [:create, :index, :show, :filtered_bylaws_is_true_index, :filtered_bylaws_is_false_index]

  def index
    @bylaws = Bylaw.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    if current_user
      p 'current user' * 10
      p current_user
      @bylaw = Bylaw.new(
        section: params[:section],
        description: params[:description],
        status: false,
        date_proposed: Date.parse(params[:date_proposed]),
        date_approved: Date.parse(params[:date_approved]),
        association_management_id: params[:association_management_id],
        user_id: params[:user_id]
      )
      @bylaw.save
      render 'show.json.jbuilder'
    else
      render []
    end
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
      association_management_id: params[:association_management_id],
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

  def filtered_bylaws_is_true_index
    @is_true_bylaws = Bylaw.where(status: true)
    render 'filtered_bylaws_is_true_index.json.jbuilder'
  end

  def filtered_bylaws_is_false_index
    @is_false_bylaws = Bylaw.where(status: false)
    render 'filtered_bylaws_is_false_index.json.jbuilder'
  end
end
