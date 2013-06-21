class AddFarmIdToCrops < ActiveRecord::Migration
  def change
    add_column :crops, :farm_id, :integer 
  end
end
