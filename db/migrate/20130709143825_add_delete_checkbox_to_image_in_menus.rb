class AddDeleteCheckboxToImageInMenus < ActiveRecord::Migration
  def change
  	add_column :menus, :delete_image, :boolean
  end
end
