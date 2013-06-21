class MenusController < ApplicationController

  def index
    @menus = Menu.all
  end
  
  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
  end
  
  def create
    @menu = Menu.new(params[:menu])
    if @menu.save
      flash[:notice] = "Menu was added successfully"
      redirect_to menu_path(@menu)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @menu = Menu.find(params[:id])
  end
  
  def destroy
    @menu = Menu.find(params[:id])
    @menu.destroy
    redirect_to menus_url
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update_attributes(params[:menu])
      flash[:notice] = "Menus was updated successfully"
      redirect_to menus_path(@menu)
    else
      render :action => 'edit'
    end
  end
  
  
end
