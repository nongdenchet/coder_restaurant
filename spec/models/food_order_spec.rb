require 'rails_helper'

RSpec.describe FoodOrder, type: :model do
  it { should respond_to :food_id }
  it { should respond_to :order_id }
  it { should respond_to :quantity }
  it { should belong_to :food }
  it { should belong_to :order }
  it { should validate_presence_of :food_id }
  it { should validate_presence_of :order_id }
  it { should validate_presence_of :quantity }
  it { should validate_numericality_of(:quantity).only_integer }
  it { should validate_numericality_of(:quantity).is_greater_than_or_equal_to(1) }
end
