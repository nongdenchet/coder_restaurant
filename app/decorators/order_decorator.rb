class OrderDecorator < Draper::Decorator
  delegate_all

  def create_time
    object.created_at.strftime('%d/%m/%Y - %I:%M%p')
  end

  def total_money
    FormatUtils.format_price(object.total_money)
  end
end
