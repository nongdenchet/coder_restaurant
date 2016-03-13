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

class Order < ActiveRecord::Base
  has_many :food_orders, dependent: :destroy
  has_many :coupon_orders, dependent: :destroy
  has_many :coupons, through: :coupon_orders

  validates :address, presence: true
  validates :username, presence: true
  validates :total_money, presence: true, numericality: true
  validates :email, presence: true, format: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :phone, presence: true, numericality: true, length: {minimum: 7, maximum: 15}
end
