# == Schema Information
#
# Table name: foods
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  section     :string
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cuisine     :string
#  views_count :integer
#

require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cuisine }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image_url }
  it { should validate_presence_of :price }
  it { should validate_presence_of :section }
  it { should validate_numericality_of :price }
  it { should have_many(:reviews).dependent(:destroy) }
  it { should have_many(:food_orders).dependent(:destroy) }
  it { should validate_numericality_of(:views_count).only_integer }

  context 'custom definition' do
    before(:each) do
      @food = create(:food)
    end

    it "should return no average" do
      expect(@food.average_rating).to eq(0)
    end

    it "should return average" do
      create(:review1, food: @food)
      create(:review2, food: @food)
      create(:review3, food: @food)
      expect(@food.average_rating).to eq(2)
    end
  end
end
