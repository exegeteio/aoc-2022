# frozen_string_literal: true

# Path: lib/day_two.rb
# https://adventofcode.com/2022/day/2

class DayTwo
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def part_one
    parsed.collect(&:score).sum
  end

  def part_two
    parsed(strategy: Strategy::Outcome).collect(&:score).sum
  end

  private

  def parsed(strategy: Strategy)
    @parsed ||= data.collect do |line|
      moves = line.split(/\s/, 2)
      strat = strategy.new(*moves)
      Round.new(strat.their_move, strat.my_move)
    end
  end
end
