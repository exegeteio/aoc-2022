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

  context "defeats" do
    it "rock defeats scissors" do
      expect(rock.defeats).to eq(:scissors)
    end
    it "paper defeats rock" do
      expect(paper.defeats).to eq(:rock)
    end
    it "scissors defeats paper" do
      expect(scissors.defeats).to eq(:paper)
    end
  end

  context "defeated_by" do
    it "rock defeated by paper" do
      expect(rock.defeated_by).to eq(:paper)
    end

    it "paper defeated by scissors" do
      expect(paper.defeated_by).to eq(:scissors)
    end

    it "scissors defeated by rock" do
      expect(scissors.defeated_by).to eq(:rock)
    end
  end
end