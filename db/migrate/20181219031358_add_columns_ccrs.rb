class AddColumnsCcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ccrs, :article, :string
    add_column :ccrs, :header, :string
    change_column :ccrs, :section, "integer USING CAST(section AS integer)"
  end
end
