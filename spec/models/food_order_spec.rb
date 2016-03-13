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

require 'rails_helper'

RSpec.describe FoodOrder, type: :model do
  it { should belong_to :food }
  it { should belong_to :order }
  it { should validate_presence_of :food_id }
  it { should validate_presence_of :order_id }
  it { should validate_presence_of :quantity }
  it { should validate_numericality_of(:quantity).only_integer }
  it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1) }
end
