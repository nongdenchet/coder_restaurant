class CouponDecorator < Draper::Decorator
  delegate_all

  def value
    "-#{object.percent.to_i}%"
  end
end
