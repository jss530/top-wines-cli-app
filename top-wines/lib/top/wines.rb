require "top/wines/version"
require 'nokogiri'
require 'open-url'

module Top
  module Wines

    class TopWines
    # Your code goes here...
      attr_accessor :name, :year, :score, :price

      def list #does this need to be a class or instance method?
        html = Nokogiri::HTML(open("http://top100.winespectator.com/lists"))

        wine = self.new
        wine.name =
        wine.year =
        wine.score =
        wine.price =
        #this is the method that shows the list of wines
      end

      def show_wines?
        #this will show the behavior if user enters I'm thirsty
        puts "Enter 'I'm thirsty' to get started:"
        input = gets.strip

          if input == "I'm thirsty" || "Im thirsty"
            list
          else
            puts "Remember, it's always happy hour somewhere!"
          end
      end

    def call
      puts "Enter the number of any wine to see its description:"
      input = gets.strip

    end
  end
end
