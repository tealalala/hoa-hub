class RenameColumnForBylaws < ActiveRecord::Migration[5.2]
  def change
    rename_column :bylaws, :association_id, :association_management_id
    rename_column :ccrs, :association_id, :association_management_id
  end
end
