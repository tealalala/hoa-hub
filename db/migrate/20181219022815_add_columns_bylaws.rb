class AddColumnsBylaws < ActiveRecord::Migration[5.2]
  def change
    add_column :bylaws, :article, :string
    add_column :bylaws, :header, :string
    change_column :bylaws, :section, "integer USING CAST(section AS integer)"
  end
end
