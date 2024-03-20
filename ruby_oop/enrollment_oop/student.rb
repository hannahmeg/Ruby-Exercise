class Student
  attr_accessor :id, :name, :birth_date, :course_id, :parent

  def initialize(id, name, birth_date, course_id, parent)
    @id = id
    @name = name
    @birth_date = birth_date
    @course_id = course_id
    @parent = parent
  end
end

# Generate 10 Instances of Class Student
students = []
input_count = 0
puts "Input Student ID, Student Name, Birthdate, Course ID, and Parent Name separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
  input = gets.chomp
  students << input.split(", ")
  input_count += 1
end


i = 0
while i < students.size
  students.each do |student|
    Student.new(student[0], student[1], student[2], student[3], student[4])
    i += 1
  end
end

p ObjectSpace.each_object(Student).to_a