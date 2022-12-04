require 'spec_helper'

describe DayThree::Group do
  it "finds the common badge item" do
    subject = described_class.new(%w[abc ade afg])
    expect(subject.badge).to eq("a")
  end

  it "finds the common badge item - part 2" do
    subject = described_class.new(%w[ABc aBC aBc])
    expect(subject.badge).to eq("B")
  end
end