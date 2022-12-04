class DayTwo
  class Strategy
    CODE = {
      A: :rock,
      B: :paper,
      C: :scissors,
      X: :rock,
      Y: :paper,
      Z: :scissors
    }

    def initialize(their_move, my_plan)
      @their_move = their_move.to_sym
      @my_plan = my_plan.to_sym
    end

    def my_move
      CODE[@my_plan]
    end

    def their_move
      CODE[@their_move]
    end
  end
end
