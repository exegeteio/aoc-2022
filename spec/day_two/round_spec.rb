# frozen_string_literal: true

describe DayTwo::Round do
  it "scores moves" do
    expect(described_class.new(:paper, :paper).move_score).to eq(2)
    expect(described_class.new(:rock, :rock).move_score).to eq(1)
    expect(described_class.new(:scissors, :scissors).move_score).to eq(3)
  end

  it "scores outcomes" do
    win = described_class.new(:rock, :paper)
    loss = described_class.new(:paper, :rock)
    draw = described_class.new(:scissors, :scissors)

    expect(win.outcome_score).to eq(6)
    expect(loss.outcome_score).to eq(0)
    expect(draw.outcome_score).to eq(3)
  end
end