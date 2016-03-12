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