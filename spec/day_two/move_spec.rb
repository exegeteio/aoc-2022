# frozen_string_literal: true

describe DayTwo::Move do
  let(:paper) { described_class.new(:paper) }
  let(:rock) { described_class.new(:rock) }
  let(:scissors) { described_class.new(:scissors) }

  it "compares moves" do
    expect(paper).to eq(paper)
    expect(rock).to eq(rock)
    expect(scissors).to eq(scissors)
    expect(paper).not_to eq(rock)
    expect(paper).not_to eq(scissors)
  end

  it "checks beating moves" do
    expect(rock.beats?(scissors)).to be_truthy
    expect(scissors.beats?(paper)).to be_truthy
    expect(paper.beats?(rock)).to be_truthy
    expect(paper.beats?(scissors)).to be_falsey
  end
end