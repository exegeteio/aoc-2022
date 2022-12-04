# frozen_string_literal: true

class DayTwo
  class Move
    attr_reader :move

    BEATS = {
      rock: :scissors,
      scissors: :paper,
      paper: :rock
    }

    def initialize(move)
      @move = move
    end

    def ==(other)
      move == other.move
    end

    def beats?(other)
      other.move == defeats
    end

    def defeats
      BEATS[move]
    end

    def defeated_by
      BEATS.invert[move]
    end
  end
end
