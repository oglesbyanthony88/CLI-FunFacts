class FunFacts::Scrapper
    attr_accessor :url, :doc
    
    facts = []
    
    def initialize
        self.doc = Nokogiri::HTML(open("https://www.kickassfacts.com/fact-of-the-day/"))
    end

    def scrape_facts

        facts << self.scrap_facts
        binding.pry
    end
    




end