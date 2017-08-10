require "top/wines/version"

module Top
  module Wines
    # Your code goes here...
    attr_accessor :name, :year, :score, :price

    def call
      puts "Enter the number of any wine to see its description:"
      input = gets.strip

    end
  end
end
