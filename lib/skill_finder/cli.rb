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
        puts " "
        puts "~~~ Welcome to the Unique Skill Finder! ~~~".colorize(:red)
        puts " "
        puts "We are here to set you apart from the crowd and help you learn a new skill that will ignite passion or make you more marketable." 
        puts " "
        puts "Are you up for the challenge? y or n" 
        @prompt_input = gets.strip.downcase
        menu if challenge_accept(@prompt_input)
    end


    def end_program
        puts "Thank you for stopping by! \nJust remember, you can do anything you set your mind to, but it takes action, perseverance, and facing your fears by Gillian Anderson"
    end

    def menu
        puts " "
        puts "Which subject would you like to learn a unqiue skill?"
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input
    end 

    def challenge_accept(prompt_input)
     if prompt_input == "y" || prompt_input == "yes"
        menu
        end
        end_program  
    end 

    def list_options
        puts <<-DOC.gsub /^\s*/, ' '
        1. Sports
        2. Cooking
        3. Arts/Craft
        4. Reading/Writing 
        DOC
        
        #Coming back to this 
        # @skills = Skill.all
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