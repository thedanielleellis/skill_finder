class Skill 
    attr_accessor :name, :benefits, :url
    
    def self.all 
        #This should return a bunch of instances of Skill
        #Example Usage 
        puts <<-DOC.gsub /^\s*/, ' '
        1. Sports
        2. Cooking
        3. Arts/Craft
        4. Reading/Writing 
        DOC
        
        skill_1 = self.new
        skill_1.name = "Sports"
        skill_1.benefits = "ALot"
        skill_1.url = "http://www.eventbrite.com"

        skill_2 = self.new
        skill_2.name = "Cooking "
        skill_2.benefits = "ALot"
        skill_2.url = "http://www.eventbrite.com"

        [skill_1, skill_2]
    end
end 