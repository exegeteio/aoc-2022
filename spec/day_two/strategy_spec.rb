require 'spec_helper'

describe DayTwo::Strategy do
  it "parses double-rock" do
    subject = described_class.new("A", "X")
    expect(subject.their_move).to eq(:rock)
    expect(subject.my_move).to eq(:rock)
  end

  it "parses rock paper" do
    subject = described_class.new("A", "Y")
    expect(subject.their_move).to eq(:rock)
    expect(subject.my_move).to eq(:paper)
  end

  it "parses paper scissors" do
    subject = described_class.new("C", "Y")
    expect(subject.their_move).to eq(:scissors)
    expect(subject.my_move).to eq(:paper)
  end
end