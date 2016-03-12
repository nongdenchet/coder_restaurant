class OrdersController < ApplicationController
  def add
    add_to_orders(params[:id])
    respond_to :js
  end

  def remove
    remove_from_orders(params[:id])
    respond_to :js
  end

  def coupon
    coupon = Coupon.where(name: params[:name]).first
    percent = coupon ? coupon.percent : 0
    render json: {success: coupon != nil, percent: percent}
  end

  def create
  end

  def index
    service = ShowOrderService.new(current_orders)
    @foods, @total = service.foods, service.total
    @title = @total > 0 ? 'Create order' : 'You have no orders'
  end
end
