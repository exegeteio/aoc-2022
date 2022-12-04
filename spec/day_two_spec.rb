require "spec_helper"

RSpec.describe DayTwo do
  let(:data) { File.read("spec/data/day_two.txt").split("
") }
  subject { described_class.new(data) }

  it "successfully solves part one" do
    expect(subject.part_one).to eq(15)
  end

  it "successfully solves part two" do
    expect(subject.part_two).to eq(12)
  end
end
