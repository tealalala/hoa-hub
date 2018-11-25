class Api::ActionByAddressUsersController < ApplicationController
  before_action :authenticate_user

  def index
    @action_by_users = ActionByAddressUser.order("id ASC").all
    render 'index.json.jbuilder'

    p 'current_user___' * 10
    p current_user
  end

  def create
    @action_by_user = ActionByAddressUser.new(
      category: params[:category],
      description: params[:description],
      status: params[:status],
      date_open: Date.parse(params[:date_open]),
      # date_closed: Date.parse(params[:date_closed]),
      architecture_change_is_true?: params[:architecture?],
      violation_is_true?: params[:violation?],
      vote_is_true?: params[:vote?],
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
      architecture_change_is_true?: params[:architecture?],
      violation_is_true?: params[:violation?],
      vote_is_true?: params[:vote?],
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
