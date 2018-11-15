class ChangeColumnAssociationRole < ActiveRecord::Migration[5.2]
  def down
    change_column :association_roles, :start_date, :date
    change_column :association_roles, :end_date, :date
  end
end
