class Menu < ActiveRecord::Base
  attr_accessible :description, :name, :number_of_plates, :id, :image, :delete_image
  has_many :plates
  

  has_attached_file :image, :styles => { :medium => "400x400", :thumb => "300x300>" }, :default_url => "/images/:style/missing.png"
  
end
