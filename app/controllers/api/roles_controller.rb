class Api::RolesController < ApplicationController
  def index
    @roles = Role.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @role = Role.new(
      name: params[:name]
    )
    @role.save
    render 'show.json.jbuilder'
  end

  def show
    @role = Role.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @role = Role.find_by(id: params[:id])
    @role.update(
      name: params[:name]
    )
    @role.save
    render 'show.json.jbuilder'
  end

  def destroy
    @role = Role.find_by(id: params[:id])
    @role.destroy
    render 'destroy.json.jbuilder'
  end
end
