class SkillFinder::CLI
    # greet user, run cli
    
    def run
        system("clear")
        greeting
        #Menu
        while menu != 'exit'
        end
        end_program
    end

    def greeting
        puts "Welcome to the Unique Skill Finder. Which subject would you like to learn a unqiue skill to set you apart from the crowd?"
    end

    def end_program
        puts "Bye"
    end

    def menu
        puts "Choose option"
        list_options
        input = gets.strip.downcase
        return input
    end 

    def list_options
        puts <<-DOC.gsub /^\s*/, ' 'exit
        1. Sports
        2. Cooking
        3. Arts/Craft
        4. Reading/Writing 
        DOC
    end

    def choose_option(option)
        case option
        when "1"
            puts "number 1 chosen"
        when "2"
            puts "number 2 chosen"
        end
    end
end