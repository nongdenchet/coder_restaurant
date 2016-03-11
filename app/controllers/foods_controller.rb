class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id]).decorate
    @food.increase_views_count
  end
end
