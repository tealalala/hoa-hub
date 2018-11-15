class AddColumnsToAssociationManagement < ActiveRecord::Migration[5.2]
  def change
    add_column :association_managements, :name, :string
    add_column :association_managements, :address, :string
    add_column :association_managements, :city, :string
    add_column :association_managements, :state, :string
    add_column :association_managements, :zip_code, :integer
  end
end
