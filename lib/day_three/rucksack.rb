# frozen_string_literal: true

class DayThree
  class Rucksack
    attr_reader :contents

    def initialize(contents)
      @contents = contents.chars
    end

    def dupe_item
      (left & right).first
    end

    def dupe_with(ruck)
      ruck.contents & contents
    end

    private

    def left
      compartments.first
    end

    def right
      compartments.last
    end

    def compartments
      contents.each_slice(contents.length / 2).to_a
    end
  end
end
