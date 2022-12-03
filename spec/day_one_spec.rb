require "spec_helper"

RSpec.describe DayOne do
  let(:data) { File.read("spec/data/day_one.txt").split("
") }
  subject { described_class.new(data) }

  it "returns the elf with the most callories" do
    expect(subject.part_one).to eq(24000)
  end

  it "returns the top three elves total callories" do
    expect(subject.part_two).to eq(45000)
  end
end
