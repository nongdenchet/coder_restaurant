# == Schema Information
#
# Table name: sort_options
#
#  id         :integer          not null, primary key
#  name       :string
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SortOption < ActiveRecord::Base
  validates :name, presence: true
  validates :value, presence: true
end
