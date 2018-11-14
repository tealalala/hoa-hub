class Api::AssociationsController < ApplicationController
  def index
    @associations = Association.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @association = Association.new(
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code]
    )
    @association.save
    render 'show.json.jbuilder'
  end

  def show
    @association = Association.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @association = Association.find_by(id: params[:id])
    @association.update(
      name: params[:name],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zip_code]
    )
    @association.save
    render 'show.json.jbuilder'
  end

  def destroy
    @association = Association.find_by(id: params[:id])
    @association.destroy
    render 'destroy.json.jbuilder'
  end
end
