require "pry"
module FunFacts
    class Scrapper
        attr_accessor :facts, :sources
        
        def self.scrape_kickass
            facts = Array.new(100), index = 0
                doc = Nokogiri::HTML(open("https://www.kickassfacts.com/fact-of-the-day/"))
                doc.search("#content li")[index].each do |f|
                facts[index] = f.text
                
                index += 1
            end
            facts
        end




    end
end