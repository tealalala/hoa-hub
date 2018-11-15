class RenameColumnForPropertyAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :association_roles, :association_id, :association_management_id
    rename_column :property_addresses, :association_id, :association_management_id
  end
end
