# code here!
require 'pry'
class School

    attr_accessor :roster

    def initialize(roster)
        @roster = {}
        
    end

    

    def add_student(name,grade)
        if roster.has_key?(grade) == true
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name 
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted

    end

  

end

# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
