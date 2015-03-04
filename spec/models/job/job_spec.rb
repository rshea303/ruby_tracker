require 'spec_helper'

describe "A job" do

  it "has a title" do
    job = Job.new(title: " ")

    job.valid?

    expect(job.errors[:title].any?).to eq(true)
  end

  it "has a description" do
    job = Job.new(description: " ")

    job.valid?

    expect(job.errors[:description].any?).to eq(true)
  end

  it "has a state" do
    job = Job.new(state: " ")

    job.valid?

    expect(job.errors[:state].any?).to eq(true)
  end
end
