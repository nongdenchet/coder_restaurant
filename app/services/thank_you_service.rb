class ThankYouService
  attr_reader :order, :foods, :coupon

  def initialize(order_id)
    @order = get_order(order_id)
    @foods = get_foods
    @coupon = get_coupon
    send_email
  end

  private
  def send_email

  end

  def get_order(id)
    Order.find(id).decorate
  end

  def get_coupon
    @order.coupons.count > 0 ? @order.coupons.first.decorate : nil
  end

  def get_foods
    @order.food_orders.map { |food_order| map_to_food(food_order) }
  end

  def map_to_food(food_order)
    food = food_order.food.decorate
    food.set_quantity(food_order.quantity)
    food
  end
end