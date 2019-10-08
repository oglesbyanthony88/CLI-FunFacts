class FunFacts::CLI

    def run
        list
        options
        goodbye
    end

    def goodbye
        puts "Thanks for stopping by. Dont forget to come back tomorrow for more fun!"
    end

    def list
        puts "Todays Fun Facts are:"
        @facts = FunFacts::Scrapper.today
        @facts.each.with_index(1) do |fact, i|
            puts "#{i}. #{fact.description}"
        end

    end

    def options
        input = nil
        while input != "exit"
        puts "Enter the number of the fun fact that you would like to read more about. Type exit to leave. Type list to see the Fun Facts again!"
        input = gets.chomp.downcase
        if input.to_i > 0 
            Launchy.open(@facts.source[input.to_i])
        elsif input == "list"
            list
        else
            puts "That was not an option. Type list to see the Fun Facts for today or exit to leave."
        end
    end
end
    
end

