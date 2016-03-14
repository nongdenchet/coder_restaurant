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

class Food < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  has_many :food_orders, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true, numericality: true
  validates :section, presence: true
  validates :cuisine, presence: true
  validates :views_count, numericality: {only_integer: true}

  def average_rating
    reviews.blank? ? 0 : reviews.average(:star).round(2)
  end
end
