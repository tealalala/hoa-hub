class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jbuilder'
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      status: false,
      is_elected?: false,
      is_admin?: false,
      association_role_id: params[:association_role_id],
      property_address_id: params[:property_address_id]
    )
    @user.save
    render 'show.json.jbuilder'
  end

  def show
    @user = User.first
    render 'show.json.jbuilder'
  end

  def update

  end

  def destroy

  end

end
