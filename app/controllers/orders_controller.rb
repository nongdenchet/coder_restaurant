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
    render json: GetCouponService.new(params[:name]).response
  end

  def create
    @order = CreateOrderService.new(params).create
    clear_orders if @order.persisted?
    respond_to :js
  end

  def index
    service = ShowOrderService.new(current_orders)
    @foods, @total, @title = service.foods, service.total, service.title
  end
end
