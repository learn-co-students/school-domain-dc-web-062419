require 'pry'

class School

    attr_reader :roster 

    def initialize(name)
        @name = name
        @roster = {}
    end

    # def roster
    #     @roster
    # end

    def add_student(student, grade)
        if @roster.has_key?(grade)
            @roster[grade] << student
        else 
            @roster[grade] = [student]
        end
    end

    def grade(num)
        roster[num]
    end

    def sort
        roster.each { |grade, student| student.sort! }
    end

end


