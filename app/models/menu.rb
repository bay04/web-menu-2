class Menu < ActiveRecord::Base
  attr_accessible :description, :name, :number_of_plates, :id
  has_many :plates
end
