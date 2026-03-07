class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
john = Student.new("John", 50)

puts "Well done!" if john.better_grade_than?(bob)

#puts bob.grade # error, protecte no permite llamdo de afuera