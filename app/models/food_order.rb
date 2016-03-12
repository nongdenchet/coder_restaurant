# == Schema Information
#
# Table name: food_orders
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  order_id   :integer
#  food_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_food_orders_on_food_id   (food_id)
#  index_food_orders_on_order_id  (order_id)
#
# Foreign Keys
#
#  fk_rails_38dfe1a9f8  (food_id => foods.id)
#  fk_rails_75b9d3bef9  (order_id => orders.id)
#

class FoodOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :food

  validates :food_id, presence: true
  validates :order_id, presence: true
  validates :quantity, presence: true,
            numericality: {only_integer: true, greater_than_or_equal_to: 1}
end
