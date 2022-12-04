require 'spec_helper'

describe DayTwo::Strategy::Outcome do
  it "loses" do
    # A == Rock
    subject = described_class.new("A", "X")
    expect(subject.my_move).to eq(:scissors)
  end

  it "draws" do
    # A == Rock
    subject = described_class.new("A", "Y")
    expect(subject.my_move).to eq(subject.their_move)
  end

  it "wins" do
    # A == Rock
    subject = described_class.new("A", "Z")
    expect(subject.my_move).to eq(:paper)
  end
end