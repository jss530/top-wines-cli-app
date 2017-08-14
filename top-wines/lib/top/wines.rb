
module Top
  class Wines
    # Your code goes here...

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

    def get_description
      #this will be the scraper to pull an array of descriptions
      self.get_page.css("p.pin-me")
    end

    def description(index)
      description_list = []

        self.get_description.children.map do |description|
          description_list << description.text
        end
      description_list
    end

  end
end
