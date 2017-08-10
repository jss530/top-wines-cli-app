require "top/wines/version"

module Top
  module Wines

    class TopWines
    # Your code goes here...
      attr_accessor :name, :year, :score, :price

      def self.list
        #this is the method that shows the list of wines
      end

      def show_wines?
        #this will show the behavior if user enters I'm thirsty
        puts "Enter 'I'm thirsty' to get started:"
        input = gets.strip

          if input == "I'm thirsty" || "Im thirsty"
            list
          else
            puts "Are you sure? Remember, it's always happy hour somewhere!"
          end
      end

    def call
      puts "Enter the number of any wine to see its description:"
      input = gets.strip

    end
  end
end
