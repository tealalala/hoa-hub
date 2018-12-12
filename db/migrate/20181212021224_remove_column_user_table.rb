class RemoveColumnUserTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :is_elected?, :is_elected
    rename_column :users, :is_admin?, :is_admin
  end
end
