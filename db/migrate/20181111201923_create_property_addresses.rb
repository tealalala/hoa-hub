class CreatePropertyAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :property_addresses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code

      t.timestamps
    end
  end
end
