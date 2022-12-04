require 'spec_helper'

describe DayThree::Score do
  it "scores lowercase value" do
    subject = described_class.new("p")
    expect(subject.value).to eq(16)
  end

  it "scores uppercase value" do
    subject = described_class.new("L")
    expect(subject.value).to eq(38)
  end
end