require "rubygems"
require "active_support/all"
require "humanize"
require "pry"

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :generate do
  1.upto(25) do |day|
    source_file(day)
    spec_file(day)
    source_data(day)
  end
end

def day_const(day)
  day_underscore(day).camelize
end

def day_underscore(day)
  "day_#{day.humanize.underscore}"
end

1.upto(25) do |day|
  task day_underscore(day).to_sym do
    require_relative "lib/#{day_underscore(day)}"
    data = File.read("data/#{day_underscore(day)}.txt").split("\n")
    puts [
      day_const(day),
      day_const(day).constantize.new(data).part_one,
      day_const(day).constantize.new(data).part_two
    ].join(" - ")
  end
end

task :all do |t|
  1.upto(25) do |day|
    Rake::Task[day_underscore(day)].invoke
  end
end

def source_file(day)
  File.open("lib/#{day_underscore(day)}.rb", "w") do |f|
    f.puts <<~RUBY
      # frozen_string_literal: true
      # Path: lib/#{day_underscore(day)}.rb
      # https://adventofcode.com/#{Time.now.year}/day/#{day}
      
      class #{day_const(day)}
        attr_reader :data

        def initialize(data)
          @data = data
        end

        def part_one
          "Not yet implemented!"
        end

        def part_two
          "Not yet implemented!"
        end
      end
    RUBY
  end
end

def source_data(day)
  File.open("data/#{day_underscore(day)}.txt", "w") {}
  File.open("spec/data/#{day_underscore(day)}.txt", "w") {}
end

def spec_file(day)
  File.open("spec/#{day_underscore(day)}_spec.rb", "w") do |f|
    f.puts <<~RUBY
      require "spec_helper"
      
      RSpec.describe #{day_const(day)} do
        let(:data) { File.read("spec/data/#{day_underscore(day)}.txt").split("\n") }
        subject { described_class.new(data) }

        it "successfully solves part one"

        it "successfully solves part two"
      end
    RUBY
  end
end
