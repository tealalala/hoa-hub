class CreateAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :associations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
