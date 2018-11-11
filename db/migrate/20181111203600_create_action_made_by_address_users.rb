class CreateActionMadeByAddressUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :action_made_by_address_users do |t|
      t.string :category
      t.string :description
      t.string :status
      t.date :date_open
      t.date :date_closed
      t.boolean :architecture_change_is_true?, :default => false
      t.boolean :violation_is_true?, :default => false
      t.boolean :vote_is_true?, :default => false

      t.timestamps
    end
  end
end
