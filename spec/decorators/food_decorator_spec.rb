require 'spec_helper'

describe FoodDecorator do
  before(:each) do
    @food = create(:food).decorate
  end

  it "should has default quantity" do
    expect(@food.quantity).to eq(1)
  end

  it "should set quantity" do
    @food.quantity = 2
    expect(@food.quantity).to eq(2)
  end

  it "should has right price amount" do
    expect(@food.price_amount).to eq(20000)
  end

  it "should format price" do
    expect(@food.price).to eq('20.000 VND')
  end

  it "should has right total amount" do
    @food.quantity = 3
    expect(@food.total_amount).to eq(60000)
  end

  it "should format total" do
    @food.quantity = 4
    expect(@food.total).to eq('80.000 VND')
  end
end
