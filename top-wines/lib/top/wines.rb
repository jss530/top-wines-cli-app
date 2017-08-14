
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
        wine_list = []

          self.get_wines.children.map do |wine_info|
            wine_list << wine_info.text
          end

        wine_list.join("\n")
        puts wine_list
        #binding.pry
      end

    def description
      #this will be the scraper to pull an array of descriptions
    end

    def call
      puts "Enter the number of any wine to see its description:"
      input = gets.strip
      #this will pull the array, match the number the user enters -1 in order to list description
    end
  end
end
