require 'rails_helper'

RSpec.describe StringUtils do
  it "nil should be empty" do
    expect(StringUtils.is_empty?(nil)).to eq(true)
  end

  it "empty string should be empty" do
    expect(StringUtils.is_empty?('')).to eq(true)
  end

  it "should not be empty" do
    expect(StringUtils.is_empty?("aaa")).to eq(false)
  end
end