class UserOrderMailer < ApplicationMailer
  def user_mail(email, order_id)
    @order = Order.find(order_id)
    mail(to: email, subject: 'Thank you')
  end

  def host_mail(order_id)
    @order = Order.find(order_id)
    mail(to: 'nongdenchet8435848@gmail.com', subject: 'User order')
  end
end
