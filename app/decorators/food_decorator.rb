include ActionView::Helpers::NumberHelper

class FoodDecorator < Draper::Decorator
  delegate_all

  def set_quantity(quantity)
    @quantity = quantity
  end

  def quantity
    @quantity ||= 0
  end

  def price
    FormatUtils.format_price(object.price)
  end

  def price_amount
    object.price
  end

  def total
    FormatUtils.format_price(quantity * object.price)
  end

  def total_amount
    quantity * object.price
  end
end
