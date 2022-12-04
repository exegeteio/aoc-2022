# frozen_string_literal: true

class DayThree
  class Group
    attr_reader :groups

    def initialize(groups)
      @groups = groups.map(&:chars)
    end

    def badge
      @badge ||= groups.reduce(&:&).first
    end
  end
end
