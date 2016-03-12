class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id]).decorate
    @food.increase_views_count if params[:show]
    @related_foods = Food.where(cuisine: @food.cuisine).take(2)
    @reviews = @food.reviews.order("id asc")
  end
end
