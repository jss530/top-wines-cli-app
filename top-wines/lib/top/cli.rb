module Top
  class CLI

    def start
      puts "Welcome to the top 50 wines of the world list!"

      puts "To get started, type: I love wine!"
      input = gets.strip

        if input == "I love wine!"
          Top::Scraper.scrape_wines
          Top::Scraper.scrape_wine_descriptions
          list_wines
          menu
        else
          puts "Please try again."
        end
    end

    def list_wines
      #list all the wine names
      Top::Scraper.scrape_wines.each do |wine|
        puts "#{wine.name}"
      end
    end
      #binding.pry


    def menu
      #ask for user input to view a specific wine
      puts "Enter the number of any wine to see its description:"
      #show that wine based off of user inut
      user_input = gets.chomp
      index = user_input.to_i - 1

      if (1..50).include?(index)
        Top::Scraper.scrape_wine_descriptions
        self.menu
      elsif user_input == "exit"
        self.goodbye
      else
        puts "Please enter a valid number."
        self.menu
      end
      #this method will loop until the user enters 'exit'
    end

    def goodbye
      puts "Hope you come back soon - remember, it's always happy hour somewhere!"
    end

  end
end
