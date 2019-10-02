class FunFacts::CLI

    def run
        hello
        list
        options
        goodbye
    end

    def hello
        puts "Todays Fun Facts are:"
    end

    def goodbye
        puts "Thanks for stopping by. Dont forget to come back tomorrow for more fun!"
    end

    def list
        puts "1. The National Archives keeps the Nixon White House tapes in a climate controlled vault with hopes that future technological developments could allow for restoration of 18.5 minutes of missing audio that may have been deliberately erased. – Source"
        puts "2. F-35B Fighter Pilots have a Helmet that accesses 6 cameras around the body of the plane, allowing them to basically see through the plane. Also, it costs around $400,000. – Source"
    end

    def options
        input = nil
        while input != "exit"
        puts "Enter the number of the fun fact that you would like to read more about. Type exit to leave. Type list to see the Fun Facts again!"
        input = gets.chomp.downcase
        case input
        when "1" 
            puts "More info on option 1"
        when "2"
            puts "More info on option 2"
        when "list"
            list
        else
            puts "That was not an option. Type list to see the Fun Facts for today or exit to leave."
        end
    end
end
    
end

