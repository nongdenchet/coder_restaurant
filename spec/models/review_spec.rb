# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  username   :string
#  comment    :text
#  food_id    :integer
#  star       :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_food_id  (food_id)
#
# Foreign Keys
#
#  fk_rails_25ab61da8d  (food_id => foods.id)
#

require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should validate_presence_of :food_id }
  it { should validate_presence_of :star }
  it { should respond_to :username }
  it { should respond_to :comment }
  it { should validate_numericality_of(:star).only_integer }
  it { should validate_inclusion_of(:star).in_range(1..5) }

  context "set default value" do
    before(:each) do
      @food = create(:food1)
    end

    it "should set default value" do
      review = Review.create(star: 4, username: '', comment: '', food: @food)
      expect(review.username).to eq('Anonymous')
      expect(review.comment).to eq('No comment')
    end

    it "should set default value" do
      review = Review.create(star: 4, food: @food)
      expect(review.username).to eq('Anonymous')
      expect(review.comment).to eq('No comment')
    end
  end
end
