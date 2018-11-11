class CreateAddForeignKeysToTables < ActiveRecord::Migration[5.2]
  def change
    create_table :add_foreign_keys_to_tables do |t|
      add_column :users, :association_role_id, :integer
      add_column :users, :property_address_id, :integer
      add_column :property_addresses, :association_id, :integer
      add_column :property_addresses, :user_id, :integer
      add_column :action_made_by_address_users, :user_id, :integer
      add_column :action_made_by_address_users, :property_address_id, :integer
      add_column :action_made_by_address_users, :bylaw_id, :integer
      add_column :action_made_by_address_users, :ccr_id, :integer
      add_column :ccrs, :assocation_id, :integer
      add_column :ccrs, :user_id, :integer
      add_column :bylaws, :assocation_id, :integer
      add_column :bylaws, :user_id, :integer
      add_column :association_roles, :association_id, :integer
      add_column :association_roles, :user_id, :integer
      add_column :association_roles, :role_id, :integer
      add_column :association_roles, :group_id, :integer

      t.timestamps
    end
  end
end
