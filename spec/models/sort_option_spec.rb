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

require 'rails_helper'

RSpec.describe SortOption, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:name) }
end
