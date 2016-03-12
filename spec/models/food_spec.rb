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

require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should respond_to :name }
  it { should respond_to :description }
  it { should respond_to :image_url }
  it { should respond_to :price }
  it { should respond_to :section }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cuisine }
  it { should validate_presence_of :description }
  it { should validate_presence_of :image_url }
  it { should validate_presence_of :price }
  it { should validate_presence_of :section }
  it { should validate_numericality_of :price }
  it { should have_many :reviews }
  it { should have_many :food_orders }
  it { should validate_numericality_of(:views_count).only_integer }
end
