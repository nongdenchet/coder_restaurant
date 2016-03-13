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

FactoryGirl.define do
  factory :order, class: Order do
    username FFaker::Name.name
    phone 123456789
    email 'nongdenchet@gmail.com'
    address 'address'
    total_money 100000
  end
end
