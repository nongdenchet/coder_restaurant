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

require 'rails_helper'

RSpec.describe Coupon, type: :model do
  it { should respond_to :name }
  it { should respond_to :percent }
  it { should validate_presence_of :name }
  it { should validate_presence_of :percent }
end
