class CreateGroupIds < ActiveRecord::Migration[5.2]
  def change
    create_table :group_ids do |t|
      t.string :name

      t.timestamps
    end
  end
end
