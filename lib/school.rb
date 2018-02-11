# code here!
class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster.include?(grade) ? @roster[grade] << student : @roster[grade] = [student]
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster[grade].values.sort{|a, b| a <=> b}
  end
end
