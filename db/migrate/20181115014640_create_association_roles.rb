class CreateAssociationRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :association_roles do |t|
      t.integer :user_id
      t.integer :association_id
      t.integer :role_id
      t.integer :group_id
      t.boolean :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
