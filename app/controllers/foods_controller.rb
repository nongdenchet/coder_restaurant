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
    service = ShowFoodService.new(params)
    @food, @related_foods, @reviews = service.food, service.related_foods, service.reviews
  end
end
