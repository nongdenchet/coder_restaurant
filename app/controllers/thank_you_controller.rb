class ThankYouController < ApplicationController
  def show
    service = ThankYouService.new(params[:id])
    @order, @foods, @coupon = service.order, service.foods, service.coupon
  end
end
