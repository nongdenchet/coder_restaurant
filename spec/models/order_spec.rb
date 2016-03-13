# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  username    :string
#  phone       :string
#  email       :string
#  address     :string
#  total_money :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should have_many(:coupons) }
  it { should have_many(:food_orders).dependent(:destroy) }
  it { should have_many(:coupon_orders).dependent(:destroy) }
  it { should validate_presence_of :address }
  it { should validate_presence_of :username }
  it { should validate_presence_of :total_money }
  it { should validate_presence_of :email }
  it { should validate_presence_of :phone }
  it { should validate_numericality_of(:phone) }
  it { should validate_length_of(:phone).is_at_least(7) }
  it { should validate_length_of(:phone).is_at_most(15) }
  it { should validate_presence_of :email }
  it { should_not allow_value('test@test').for(:email) }
  it { should_not allow_value('android').for(:email) }
  it { should_not allow_value('ios.@..c').for(:email) }
  it { should allow_value('vuhuyquan@apidez.com').for(:email) }
end
