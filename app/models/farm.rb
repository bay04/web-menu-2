class Farm < ActiveRecord::Base
  attr_accessible :crop_id, :name

  has_many :crops
 
end
