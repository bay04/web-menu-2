class Crop < ActiveRecord::Base
  attr_accessible :name, :farm_id
  
  belongs_to :farm
end
