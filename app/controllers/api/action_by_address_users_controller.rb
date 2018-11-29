class Api::ActionByAddressUsersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create, :show, :destroy]

  def index
    p 'current_user___' * 10
    p current_user

    # @action_by_users = ActionByAddressUser.order("id ASC").all
    # render 'index.json.jbuilder'

    # @action_by_users = ActionByAddressUser.where(user_id: current_user.id)
    # render 'index.json.jbuilder'

    if current_user
      @action_by_users = ActionByAddressUser.where(user_id: current_user.id)
      render 'index.json.jbuilder'
    else
      render []
    end
  end

  def create
    @action_by_user = ActionByAddressUser.new(
      category: params[:category],
      description: params[:description],
      status: params[:status],
      date_open: Date.parse(params[:date_open]),
      # date_closed: Date.parse(params[:date_closed]),
      is_architecture: params[:is_architecture],
      is_violation: params[:is_violation],
      is_vote: params[:is_vote],
      user_id: params[:user_id],
      property_address_id: params[:property_address_id],
      bylaw_id: params[:bylaw_id],
      ccr_id: params[:ccr_id]
    )
    @action_by_user.save
    render 'show.json.jbuilder'
  end

  def show
    @action_by_user = ActionByAddressUser.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @action_by_user = ActionByAddressUser.find_by(id: params[:id])
    @action_by_user.update(
      category: params[:category],
      description: params[:description],
      status: params[:status],
      date_open: Date.parse(params[:date_open]),
      date_closed: Date.parse(params[:date_closed]),
      is_architecture: params[:is_architecture],
      is_violation: params[:is_violation],
      is_vote: params[:is_vote],
      user_id: params[:user_id],
      property_address_id: params[:property_address_id],
      bylaw_id: params[:bylaw_id],
      ccr_id: params[:ccr_id]
    )
    @action_by_user.save
    render 'show.json.jbuilder'
  end

  def destroy
    @action_by_user = ActionByAddressUser.find_by(id: params[:id])
    @action_by_user.destroy
    render 'destroy.json.jbuilder'
  end
end
