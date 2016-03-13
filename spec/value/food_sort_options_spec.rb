require 'rails_helper'

RSpec.describe FoodSortOptions do
  before(:each) do
    @options = FoodSortOptions.new
                   .with_cuisine('france')
                   .with_sort_option('name')
                   .with_views_option('view')
  end

  it "should have cuisine" do
    expect(@options.cuisine_option).to eq('france')
  end

  it "should have sort option" do
    expect(@options.sort_option).to eq('name')
  end

  it "should have view option" do
    expect(@options.views_option).to eq('view')
  end
end