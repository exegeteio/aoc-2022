# frozen_string_literal: true

# Path: lib/day_three.rb
# https://adventofcode.com/2022/day/3

class DayThree
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def part_one
    data.map do |contents|
      ruck = Rucksack.new(contents)
      Score.new(ruck.dupe_item).value
    end.sum
  end

  def part_two
    data.each_slice(3).map do |group|
      Score.new(
        DayThree::Group.new(group).badge
      ).value
    end.sum
  end
end
