class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id]).decorate
    @food.increase_views_count if params[:show]
    @reviews = @food.reviews.order("id asc")
  end
end
