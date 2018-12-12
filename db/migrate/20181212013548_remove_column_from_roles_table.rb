class RemoveColumnFromRolesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :roles, :source, :string
  end
end
