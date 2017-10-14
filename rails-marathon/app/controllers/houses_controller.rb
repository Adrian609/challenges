class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(new_house_params)
    if @house.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @house = House.find(params[:id])
    @members = Member.where(house: @house)
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])

    if @house.update(new_house_params)
      redirect_to house_path
    else
      render :new
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to root_path
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_house
    @house = House.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def new_house_params
    params.require(:house).permit(:name, :author, :source, :motto)
  end


end
