class FarmsController < ApplicationController


  def index
    @farms = Farm.all
  end
  
  def show
    @farm = Farm.find(params[:id])
  end

  def new
    @farm = Farm.new
  end
  
  def create
    @farm = Farm.new(params[:farm])
    if @farm.save
      flash[:notice] = "Farm was added successfully"
      redirect_to farms_path(@farm)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @farm = Farm.find(params[:id])
  end
  
  def destroy
    @farm = Farm.find(params[:id])
    @farm.destroy
    redirect_to farms_url
  end

  def update
    @farm = Farm.find(params[:id])
    if @farm.update_attributes(params[:farm])
      flash[:notice] = "Farm was updated successfully"
      redirect_to farms_path(@farm)
    else
      render :action => 'edit'
    end
  end

end
