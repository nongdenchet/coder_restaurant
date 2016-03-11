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
  validates :name, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :price, presence: true, numericality: true
  validates :section, presence: true
  validates :cuisine, presence: true
  validates :views_count, numericality: {only_integer: true}

  def increase_views_count
    self.views_count += 1
    self.save
  end
end
