class AddImageToMenus < ActiveRecord::Migration
  def change
	  add_attachment :menus, :image
  end
end
