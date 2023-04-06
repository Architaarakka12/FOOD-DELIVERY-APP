class RestaurantsController < ApplicationController
  def index
  end

  def show
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end
  
  private
  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
  
end
