class Api::AssociationManagementManagementsController < ApplicationController
  def index
    @association_managements = AssociationManagement.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @association_management = AssociationManagement.new(
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code]
    )
    @association_management.save
    render 'show.json.jbuilder'
  end

  def show
    @association_management = AssociationManagement.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @association_management = AssociationManagement.find_by(id: params[:id])
    @association_management.update(
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code]
    )
    @association_management.save
    render 'show.json.jbuilder'
  end

  def destroy
    @association_management = AssociationManagement.find_by(id: params[:id])
    @association_management.destroy
    render 'destroy.json.jbuilder'
  end
end
