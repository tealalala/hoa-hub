class RenameColumnInBylaws < ActiveRecord::Migration[5.2]
  def change
    rename_column :bylaws, :assocation_id, :association_id
    rename_column :ccrs, :assocation_id, :association_id
  end
end
