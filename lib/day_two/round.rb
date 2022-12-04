# frozen_string_literal: true

class DayTwo
  class Round
    attr_reader :their_move, :my_move

    SCORES = {
      rock: 1,
      paper: 2,
      scissors: 3,
      loss: 0,
      draw: 3,
      win: 6
    }

    def initialize(their_move, my_move)
      @their_move = Move.new(their_move)
      @my_move = Move.new(my_move)
    end

    def score
      move_score + outcome_score
    end

    def move_score
      SCORES[my_move.move]
    end

    def outcome_score
      SCORES[outcome]
    end

    private

    def outcome
      if my_move == their_move
        :draw
      elsif my_move.beats?(their_move)
        :win
      else
        :loss
      end
    end
  end
end
