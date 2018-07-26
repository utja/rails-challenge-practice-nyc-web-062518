class BuildingsController < ApplicationController

  def index
    @buildings = Building.all
    render :index
  end

  def show
    @building = Building.find(params[:id])
  end

  def edit
    @building = Building.find(params[:id])
    render :edit
  end

  def update
    @building = Building.find(params[:id])
    @building.update(building_params)
    if @building.save
      redirect_to building_path(@building)
    else
      render :edit
    end
  end

  private

  def building_params
    params.require(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
  end

end
