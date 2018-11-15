class DropAssociationRole < ActiveRecord::Migration[5.2]
  def change
    drop_table :association_roles
  end
end
