class AddSubColumnsToCcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ccrs, :subsection, :integer
  end
end
