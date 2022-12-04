# frozen_string_literal: true

class DayThree
  class Score
    OFFSET = 96

    def initialize(char)
      @char = char
    end

    def value
      ord - offset
    end

    private

    def ord
      @char.ord
    end

    def offset
      ord > 96 ? 96 : 38
    end
  end
end