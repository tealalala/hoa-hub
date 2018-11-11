class CreateAssociationRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :association_roles do |t|
      t.string :status
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
