class CreateAssociationManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :association_managements do |t|
      

      t.timestamps
    end
  end
end
