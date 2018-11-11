class CreateBylaws < ActiveRecord::Migration[5.2]
  def change
    create_table :bylaws do |t|
      t.string :section
      t.string :description
      t.boolean :status, :default => false
      t.date :date_proposed
      t.date :date_approved

      t.timestamps
    end
  end
end
