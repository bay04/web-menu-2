class AddMenusIdToPlates < ActiveRecord::Migration
  def change
    add_column :plates, :menu_id, :integer
  end
end
