require 'pry'

class School

    attr_accessor :name, :roster

    def  initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        if self.roster[grade] == nil
         self.roster[grade] = []
         self.roster[grade] << name
        else
         self.roster[grade] << name
        end
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        roster.each do |k, v|
            v.sort! 
        end
    end
end