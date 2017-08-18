module Top
  class Scraper
    def self.get_page
      html = Nokogiri::HTML(open("https://vinepair.com/articles/best-wines-2016"))
    end

    def self.get_wines
      self.get_page.css("h3.float-fix")
    end

    def self.get_descriptions
      self.get_page.css(".entry p")
    end

    def self.scrape_wines
      self.get_wines.children.map do |wine_info|
        Top::Wines.new(wine_info.text)
        #wine_list << wine_info.text
      end
    end

    def self.scrape_wine_descriptions
      self.get_descriptions[3..52].each_with_index do |desc, i|
        wine = Top::Wines.all[i]
        wine.description = desc.text
      end
    end
  end
end
