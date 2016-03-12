# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  username   :string
#  comment    :text
#  food_id    :integer
#  star       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_food_id  (food_id)
#
# Foreign Keys
#
#  fk_rails_25ab61da8d  (food_id => foods.id)
#

class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)
    redirect_to @review.food
  end

  private
  def review_params
    params.require(:review).permit(:star, :comment, :food_id, :username)
  end
end
