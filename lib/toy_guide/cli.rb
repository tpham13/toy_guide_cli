class ToyGuide::CLI 
    def start
        puts "Welcome to Toy Guide!"
        puts "What age range of toys you would like to see?"
        puts "one, two, three, four, five, six"
        puts "type either 'one', 'two', 'three', 'four', 'five', or 'six' "
        input = gets.strip.downcase
        case input
            when "one"
                # puts "in home"
                url = "https://www.fatbraintoys.com/toys/toys_by_ages/top_picks_1.cfm"
                ToyGuide::Scraper.scrape_age_one_toy(url)
            when "two"
                #scrape toy for two yr old page
            when "three"
                #scrape toy for three yr old page
            else 
                puts "invalid input"
                #some code 
            end
    end 
end