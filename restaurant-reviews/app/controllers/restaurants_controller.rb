class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
    # @review = Review.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(new_restaurant_params)
      flash[:notice] = "Restaurant updated!"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Failed to update restaurant"
      render :new
    end
  end

  def create
    @restaurant = Restaurant.new(new_restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Failed to save restaurant"
      render :new
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.destroy
      flash[:notice] = "Restaurant deleted!"
      redirect_to root_path
    else
      flash[:alert] = "Failed to delete restaurant"
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def new_restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description)
    end

end
