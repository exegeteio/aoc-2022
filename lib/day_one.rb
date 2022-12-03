# frozen_string_literal: true

# Path: lib/day_one.rb
# https://adventofcode.com/2022/day/1

class DayOne
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def part_one
    elves.values.max
  end

  def part_two
    elves.values.sort.reverse[0..2].sum
  end

  private

  def elves
    @elves ||= parse_data
  end

  # Returns an array of callories, the index is the elf number.
  def parse_data
    curr = 1
    data.each_with_object({}) do |line, acc|
      if line == ""
        curr += 1
      else
        acc[curr] = acc[curr].to_i + line.to_i
      end
      acc
    end
  end
end
