class PlatesController < ApplicationController

  before_filter :find_menu

  def index
    @plates = @menu.plates.all
  end

  def show
    @plate = Plate.find(params[:id])
  end
  
  def new
    @plate = @menu.plates.new
  end
  
  def create
    @plate = Plate.new(params[:plate])
    if @plate.save
      redirect_to menu_plates_path(@menu)
      flash[:notice] = "Plate was successfully added!"
    else
      render :action => 'new'
    end
  end
  
    def edit
      @plate = Plate.find(params[:id])
    end
  
    def update
      @plate = @menu.plates.find(params[:id])
      if @plate.update_attributes(params[:plate])
        redirect_to menu_plates_path
        flash[:notice] = "Plate was successfully updated"
      else
        render :action => 'edit'
      end
    end
    
  
  
  def find_menu
    @menu = Menu.find(params[:menu_id])
  end
end
