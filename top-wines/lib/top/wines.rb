require 'top/wines'
require 'nokogiri'
require 'open-uri'
require 'pry'

module Top
  class Wines
    # Your code goes here...
      attr_accessor :name, :year, :score, :price

      def list
        html = Nokogiri::HTML(open("http://top100.winespectator.com/lists"))
        binding.pry

        wine = self.new
        wine.name = html.search()
        wine.year = html.search()
        wine.score = html.search()
        wine.price = html.search()


        #this is the method that shows the list of wines
      end

      def show_wines?
        #this will show the behavior if user enters I'm thirsty
        puts "Enter 'I'm thirsty' to get started:"
        input = gets.strip

          if input == "I'm thirsty" || "Im thirsty"
            #list
            puts "Let's get started!(temporary)"
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
