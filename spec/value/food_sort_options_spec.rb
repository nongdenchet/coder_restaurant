require 'rails_helper'

RSpec.describe FoodSortOptions do
  before(:each) do
    @options = FoodSortOptions.new
                   .with_cuisine('france')
                   .with_sort_option('name')
                   .with_views_option('view')
  end

  it "should have cuisine" do
    expect(@options.values[0][:value]).to eq('france')
    expect(@options.values[0][:type]).to eq('cuisine_option')
  end

  it "should have sort option" do
    expect(@options.values[1][:value]).to eq('name')
    expect(@options.values[1][:type]).to eq('sort_option')
  end

  it "should have view option" do
    expect(@options.values[2][:value]).to eq('view')
    expect(@options.values[2][:type]).to eq('views_option')
  end
end