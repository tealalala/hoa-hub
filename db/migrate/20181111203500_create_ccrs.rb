class CreateCcrs < ActiveRecord::Migration[5.2]
  def change
    create_table :ccrs do |t|
      t.string :section
      t.string :description
      t.date :date_proposed
      t.date :date_approved
      t.boolean :status, :default => false

      t.timestamps
    end
  end
end
