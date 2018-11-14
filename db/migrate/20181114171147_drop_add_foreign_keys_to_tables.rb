class DropAddForeignKeysToTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :add_foreign_keys_to_tables
    drop_table :group_ids
  end
end
