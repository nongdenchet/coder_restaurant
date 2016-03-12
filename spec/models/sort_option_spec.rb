require 'rails_helper'

RSpec.describe SortOption, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:value) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:name) }
end
