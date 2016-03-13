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

FactoryGirl.define do
  factory :review1, class: Review do
    username FFaker::Name.name
    comment FFaker::Lorem.paragraph(1)
    star 1
  end

  factory :review2, class: Review do
    username FFaker::Name.name
    comment FFaker::Lorem.paragraph(1)
    star 2
  end

  factory :review3, class: Review do
    username FFaker::Name.name
    comment FFaker::Lorem.paragraph(1)
    star 3
  end
end