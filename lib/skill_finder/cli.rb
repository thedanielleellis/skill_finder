class CLI
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
        puts <<-DOC.gsub /^\s*/, ' '
        1. Sports
        2. Cooking
        3. Arts/Craft
        4. Reading/Writing 
        DOC
        @skills = Skill.all
    end

    #From video
    # @deals = DailyDeal::Deal.today (@skills = SkillFinder::Skill.all)
    # I want to have a class method called Deal today that returns a whole bunch of deals
    # This is where I want to start programming. Using today instead of all 
    # I am creating skills.rb 

    def choose_option(option)
        case option
        when "1"
            puts "number 1 chosen"
        when "2"
            puts "number 2 chosen"
        end
    end
end