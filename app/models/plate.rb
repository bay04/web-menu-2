class Plate < ActiveRecord::Base
  attr_accessible :contains_nuts, :description, :name, :number_of_ingredients, :menu_id, :menu_name, :menu.to_sym  
  
  belongs_to :menu
  
  
  private
  def fetch_menu
    @menu = Menu.find(params[:id])
    return [:menu_id]
  end
end
