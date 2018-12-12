class AddColumnToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :source, :string
  end
end
