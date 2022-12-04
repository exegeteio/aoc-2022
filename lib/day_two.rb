# frozen_string_literal: true

# Path: lib/day_two.rb
# https://adventofcode.com/2022/day/2

class DayTwo
  attr_reader :data

  CODE = {
    A: :rock,
    B: :paper,
    C: :scissors,
    X: :rock,
    Y: :paper,
    Z: :scissors
  }

  def initialize(data)
    @data = data
  end

  def part_one
    parsed.collect(&:score).sum
  end

  def part_two
    "Not yet implemented!"
  end

  private

  def parsed
    @parsed ||= data.collect do |line|
      moves = line.split(/\s/, 2)
      moves.collect! { |move| CODE[move.to_sym] }
      Round.new(*moves)
    end
  end
end
