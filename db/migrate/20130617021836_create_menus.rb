class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.integer :number_of_plates

      t.timestamps
    end
  end
end
