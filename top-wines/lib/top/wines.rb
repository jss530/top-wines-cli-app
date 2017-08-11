
module Top
  class Wines
    # Your code goes here...
      attr_accessor :rank, :name, :year, :score, :price

      def list
        html = Nokogiri::HTML(open("http://top100.winespectator.com/lists"))
        binding.pry

        wine = self.new
        wine.rank = html.search("#table td.rank").text
        wine.name = html.search(".sort-text").text
        wine.year = html.search("#table td.vintage").text
        wine.score = html.search("#table td.score").text
        wine.price = html.search("#table td.price").text

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
