# == Schema Information
#
# Table name: coupons
#
#  id         :integer          not null, primary key
#  name       :string
#  percent    :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :coupon, class: Coupon do
    name 'CODERSCHOOL'
    percent 50
  end
end
