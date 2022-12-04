class DayTwo
  class Strategy
    class Outcome < Strategy
      OUTCOMES = {
        X: :defeats,
        Y: :move,
        Z: :defeated_by
      }

      def my_move
        their_move = Move.new(CODE[@their_move])
        their_move.send(OUTCOMES[@my_plan])
      end
    end
  end
end