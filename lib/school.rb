# code here!
require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  #binding.pry
  attr_accessor :name, :roster
  

  def roster
   @roster
  end
  
  def add_student(new_student, grade)
   @roster[grade] ||= []
   @roster[grade] << new_student
  end
  #binding.pry
  
  def grade(grade)
    puts @roster[grade].sort
    @roster[grade].sort
    # binding.pry
  end
  
  def sort
    @roster.each {|k,v| @roster[k]=(v.sort) }
  # binding.pry 
  end  
end
  


# this = School.new("TCW")
# puts this