class Api::GroupsController < ApplicationController
  def index
    @groups = Group.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @group = Group.new(
      name: params[:name]
    )
    @group.save
    render 'show.json.jbuilder'
  end

  def show
    @group = Group.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @group = Group.find_by(id: params[:id])
    @group.update(
      name: params[:name]
    )
    @group.save
    render 'show.json.jbuilder'
  end

  def destroy
    @group = Group.find_by(id: params[:id])
    @group.destroy
    render 'destroy.json.jbuilder'
  end
end
