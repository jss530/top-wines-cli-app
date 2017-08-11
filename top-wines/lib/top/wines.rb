
module Top
  class Wines
    # Your code goes here...
      attr_accessor :rank, :name, :year, :score, :price

      def list
        html = Nokogiri::HTML(open("http://top100.winespectator.com/lists"))
        binding.pry

        @rank = html.css(".rank").text
        @name = html.css(".sort-text").text
        @year = html.css("#table td.vintage").text
        @score = html.css("#table td.score").text
        @price = html.css("#table td.price").text

        #rank: #table td.rank
        #name: .sort-text
        #year: #table td.vintage
        #score: #table td.score
        #price: #table td.price
        #description: #table .table-aditionalInfo.active class tabel-note

        #this is the method that shows the list of wines
      end

      def show_wines?
        #this will show the behavior if user enters I'm thirsty
        puts "Enter 'I'm thirsty' to get started:"
        input = gets.strip

      end

    def call
      puts "Enter the number of any wine to see its description:"
      input = gets.strip

    end
  end
end
