# code here!
class School
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end 

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
          else
            @roster[grade] = [name]
          end
    end

    def grade(grade) 
        @roster[grade]
    end 

  def sort
    sorted = {}
    @roster.sort.each do |grade, array|
      sorted[grade] = (array.sort)
    end
    sorted
end

end