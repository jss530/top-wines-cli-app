
module Top
  class Wines
    # Your code goes here...
      attr_accessor :rank, :name, :year, :score, :price

      def get_page
        html = Nokogiri::HTML(open("https://vinepair.com/articles/best-wines-2016"))
      end

      def get_wines
        self.get_page.css("h3.float-fix")
      end

      def list

        binding.pry

        @rank = html.css("h3.float-fix").text
        @name = html.css("span .wineName span .sort-text").text
        @price = html.css("#table td.price").text

        #rank: #table td.rank
        #name: span .wineName span .sort-text
        #price: #table td.price
        #description: #table .table-aditionalInfo.active class tabel-note

        #doc.css(".post").each do |post|
        #  course = Course.new
        #  course.title = post.css("h2").text
        #  course.schedule = post.css(".date").text
        #  course.description = post.css("p").text
        #  end
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
