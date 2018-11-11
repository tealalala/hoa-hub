class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :status, :default => false
      t.boolean :is_elected?, :default => false
      t.boolean :is_admin?, :default => false

      t.timestamps
    end
  end
end
