include ActionView::Helpers::NumberHelper

class FoodDecorator < Draper::Decorator
  delegate_all

  def price
    number_to_currency(object.price, precision: 0, separator: '.', delimiter: '.', unit: '') + ' VND'
  end
end
