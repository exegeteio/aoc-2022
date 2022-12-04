require 'spec_helper'

describe DayThree::Rucksack do
  it "finds dupe a" do
    subject = described_class.new("aBcDeFgabCdEfG")
    expect(subject.dupe_item).to eq("a")
  end

  it "finds dupe b" do
    subject = described_class.new("aBcDeFgABCdEfG")
    expect(subject.dupe_item).to eq("B")
  end
end