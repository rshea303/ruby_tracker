require 'spec_helper'

describe "A city" do

  it "has a name" do
    city = City.new(name: "Denver")

    city.valid?

    expect(city.errors[:name].any?).to eq(false)
  end

  it "is not valid without a name" do
    city = City.new(name: " ")

    city.valid?

    expect(city.errors[:name].any?).to eq(true)
  end
end
