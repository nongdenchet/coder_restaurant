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

FactoryGirl.define do
  factory :food, class: Food do
    name FFaker::Name.name
    description FFaker::Lorem.paragraph(1)
    section 'Drinks'
    image_url 'link'
    cuisine 'VN'
    price 20000
    views_count 1
  end
end
