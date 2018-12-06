class Api::UsersController < ApplicationController
  before_action :authenticate_user, only: [:index, :show]

  def index
    p 'current_user ' * 10
    p current_user
    @users = User.order("id ASC").all
    render 'index.json.jbuilder'
  end

  # def create
  #   @user = User.new(
  #     first_name: params[:first_name],
  #     middle_name: params[:middle_name],
  #     last_name: params[:last_name],
  #     email: params[:email],
  #     status: false,
  #     is_elected?: false,
  #     is_admin?: false,
  #     association_role_id: params[:association_role_id],
  #     property_address_id: params[:property_address_id]
  #   )
  #   @user.save
  #   render 'show.json.jbuilder'
  # end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    # @user = User.find_by(id: params[:id])
    p 'current_user ' * 10
    p current_user
    @user = User.find_by(id: current_user.id)
    render 'show.json.jbuilder'

    # if current_user
    # else
    #   render []
    # end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      email: params[:email],
      association_role_id: params[:association_role_id],
      property_address_id: params[:property_address_id]
    )
    @user.save
    render 'show.json.jbuilder'
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render 'destroy.json.jbuilder'
  end
end
