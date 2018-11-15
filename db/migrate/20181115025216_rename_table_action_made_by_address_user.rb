class RenameTableActionMadeByAddressUser < ActiveRecord::Migration[5.2]
  def change
    rename_table :action_made_by_address_users, :action_by_address_users
  end
end
