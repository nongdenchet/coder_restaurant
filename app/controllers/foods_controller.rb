# == Schema Information
#
# Table name: foods
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  section     :string
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cuisine     :string
#  views_count :integer
#

class FoodsController < ApplicationController
  def show
    @food = Food.find(params[:id]).decorate
    @food.increase_views_count if params[:show]
    @related_foods = FoodDecorator.decorate_collection(Food.where(cuisine: @food.cuisine).take(2))
    @reviews = @food.reviews.order("id asc")
  end
end
