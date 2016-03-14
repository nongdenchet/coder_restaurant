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

class Review < ActiveRecord::Base
  belongs_to :food

  before_create :set_default
  validates :food_id, presence: true
  validates :star, presence: true, inclusion: 1..5,
            numericality: {only_integer: true}

  def set_default
    self.username = 'Anonymous' if username.blank?
    self.comment = 'No comment' if comment.blank?
  end
end
