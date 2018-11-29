class RenameColumnsActionByAddressUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :action_by_address_users, :architecture_change_is_true?, :is_architecture
    rename_column :action_by_address_users, :violation_is_true?, :is_violation
    rename_column :action_by_address_users, :vote_is_true?, :is_vote
  end
end
