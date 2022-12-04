require "spec_helper"

RSpec.describe DayThree do
  let(:data) { File.read("spec/data/day_three.txt").split("
") }
  subject { described_class.new(data) }

  it "successfully solves part one" do
    expect(subject.part_one).to eq(157)
  end

  it "successfully solves part two" do
    expect(subject.part_two).to eq(70)
  end
end
