class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def roster=(new_roster)
    @roster=new_roster
  end
  def add_student(student_name,grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each {|grade,student_list| @roster[grade] = student_list.sort}
  end
end
