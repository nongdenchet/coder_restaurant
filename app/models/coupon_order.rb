# == Schema Information
#
# Table name: coupon_orders
#
#  id         :integer          not null, primary key
#  coupon_id  :integer
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_coupon_orders_on_coupon_id  (coupon_id)
#  index_coupon_orders_on_order_id   (order_id)
#
# Foreign Keys
#
#  fk_rails_b80fc02b7d  (order_id => orders.id)
#  fk_rails_e63d3e716f  (coupon_id => coupons.id)
#

class CouponOrder < ActiveRecord::Base
  belongs_to :coupon
  belongs_to :order
end
