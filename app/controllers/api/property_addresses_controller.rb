class Api::PropertyAddressesController < ApplicationController
  def index
    @property_addresses = PropertyAddress.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @property_address = PropertyAddress.new(
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      association_id: params[:association_id],
      user_id: params[:user_id]
    )
    @property_address.save
    render 'show.json.jbuilder'
  end

  def show
    @property_address = PropertyAddress.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @property_address = PropertyAddress.find_by(id: params[:id])
    @property_address.update(
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code],
      association_id: params[:association_id],
      user_id: params[:user_id]
    )
    @property_address.save
    render 'show.json.jbuilder'
  end

  def destroy
    @property_address = PropertyAddress.find_by(id: params[:id])
    @property_address.destroy
    render 'destroy.json.jbuilder'
  end
end
