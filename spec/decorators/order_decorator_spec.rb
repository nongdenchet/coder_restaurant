require 'spec_helper'

describe OrderDecorator do
  before(:each) do
    @order = create(:order).decorate
  end

  it "should format created time" do
    expect(@order.create_time).to eq('13/03/2016 - 11:00PM')
  end

  it "should format total money" do
    expect(@order.total_money).to eq('100.000 VND')
  end
end
