require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :image_url }
  it { should respond_to :price }
  it { should respond_to :section }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image_url }
  it { should validate_presence_of :price }
  it { should validate_presence_of :section }
  it { should validate_numericality_of :price }
end
