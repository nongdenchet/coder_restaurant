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

class Coupon < ActiveRecord::Base
  validates :name, presence: true
  validates :percent, presence: true
end
