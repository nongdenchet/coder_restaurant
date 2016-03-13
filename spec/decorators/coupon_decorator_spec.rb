require 'spec_helper'

describe CouponDecorator do
  before(:each) do
    @coupon = create(:coupon).decorate
  end

  it "should decorate percent" do
    expect(@coupon.value).to eq("-50%")
  end
end
