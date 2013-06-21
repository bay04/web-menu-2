class RemoveCropIdFromFarm < ActiveRecord::Migration
  def up
    remove_column :farms, :crop_id
  end


  def down
    add_column :farms, :crop_id, :integer
  end
end
