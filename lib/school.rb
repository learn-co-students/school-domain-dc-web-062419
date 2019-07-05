
# School
# ::new
#   has an empty roster when initialized (FAILED - 1)
# #add_student
#   is able to add a student (FAILED - 2)
#   is able to add multiple students to a class (grade) (FAILED - 3)
#   is able to add students to different grades (FAILED - 4)
# #grade
#   is able to retreive students from a grade (FAILED - 5)
# #sort
#   is able to sort the students (FAILED - 6)

require 'pry'
class School
    
    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= [] 
        roster[grade] << name
    end

    def grade(grades)
        roster[grades]
    end

    def sort
        order = {}
        roster.each do |grade, name|
        order[grade] = name.sort
        end
        order
    end
end