class CropsController < ApplicationController

  before_filter :which_farm

  def index
    @crops = Crop.all
  end
  
  def show
    @crop = Crop.find(params[:id])
  end

  def new
    @crop = Crop.new
  end
  
  def create
    @crop = Crop.new(params[:crop])
    if @crop.save
      flash[:notice] = "Crop was added successfully"
      redirect_to farm_crops_path(@farm)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @crop = Crop.find(params[:id])
  end
  
  def destroy
    @crop = Crop.find(params[:id])
    @crop.destroy
    redirect_to crops_url
  end

  def update
    @crop = Crop.find(params[:id])
    if @crop.update_attributes(params[:crop])
      flash[:notice] = "Crop was updated successfully"
      redirect_to farms_path(@farm)
    else
      render :action => 'edit'
    end
  end

  def which_farm
    @farm = Farm.find(params[:farm_id])
  end
end
