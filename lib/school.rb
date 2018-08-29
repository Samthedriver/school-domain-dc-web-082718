# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster
  attr_reader :name

  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    sorted_roster = Hash.new
    @roster.each do |key, array|
      sorted_roster[key] = array.sort
    end
    sorted_roster
  end
end
