class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        p "#{self.first_name} #{self.last_name}"
    end 

    def list_roles
        #binding.pry
        self.characters.map do |characters|
            p "#{characters.name} - #{characters.show.name}"
            #binding.pry
        end 
    end 

end