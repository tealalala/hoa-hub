class Api::AssociationRolesController < ApplicationController
  def index
    @association_roles = AssociationRole.order("id ASC").all
    render 'index.json.jbuilder'
  end

  def create
    @association_role = AssociationRole.new(
      status: false,
      start_date: params[:start_date],
      end_date: params[:end_date],
      association_id: params[:association_id],
      user_id: params[:user_id],
      role_id: params[:role_id],
      group_id: params[:group_id]
    )
    @association_role.save
    render 'show.json.jbuilder'
  end

  def show
    @association_role = AssociationRole.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @association_role = AssociationRole.find_by(id: params[:id])
    @association_role.update(
      status: params[:status],
      start_date: params[:start_date],
      end_date: params[:end_date],
      association_id: params[:association_id],
      user_id: params[:user_id],
      role_id: params[:role_id],
      group_id: params[:group_id]
    )
    @association_role.save
    render 'show.json.jbuilder'
  end

  def destroy
    @association_role = AssociationRole.find_by(id: params[:id])
    @association_role.destroy
    render 'destroy.json.jbuilder'
  end
end
