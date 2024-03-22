require_relative 'person'

class Student < Person
  attr_accessor :course_id, :parent
  @@student_records = []

  def initialize(id, name, birth_date, course_id, parent)
    super(id, name, birth_date)
    @course_id = course_id
    @parent = parent
  end

  def self.list
    @@student_records
  end

  def self.generate_samples
    student1 = Student.new('001', 'Meg', '10/12/2000', '002', 'Mother')
    student2 = Student.new('002', 'Law', '05/30/2002', '008', 'Mother')
    student3 = Student.new('003', 'Paul', '12/13/2002', '006', 'Father')
    student4 = Student.new('004', 'Alice', '02/28/2001', '005', 'Father')
    student5 = Student.new('005', 'Bob', '07/15/2003', '008', 'Guardian')
    student6 = Student.new('006', 'Eve', '11/08/2000', '010', 'Guardian')
    student7 = Student.new('007', 'Max', '03/25/2002', '001', 'Mother')
    student8 = Student.new('008', 'Sam', '09/19/2001', '003', 'Father')
    student9 = Student.new('009', 'Liz', '04/14/2003', '004', 'Mother')
    student10 = Student.new('010', 'Tim', '08/05/2002', '006', 'Guardian')
    @@student_records << student1
    @@student_records << student2
    @@student_records << student3
    @@student_records << student4
    @@student_records << student5
    @@student_records << student6
    @@student_records << student7
    @@student_records << student8
    @@student_records << student9
    @@student_records << student10
  end
end

# Generate 10 Instances of Class Student (with user input)
# students = []
# input_count = 0
# puts "Input Student ID, Student Name, Birthdate, Course ID, and Parent Name separated by comma. Press enter after each entry and repeat 10 times."
# while input_count != 10
#   input = gets.chomp
#   students << input.split(", ")
#   input_count += 1
# end
#
# i = 0
# while i < students.size
#   students.each do |student|
#     Student.new(student[0], student[1], student[2], student[3], student[4])
#     i += 1
#   end
# end

#
# i = 0
# j = 1
# while i < students.size
#   students.each do |course|
#     Student.new(j, course)
#     i += 1
#     j += 1
#   end
# end
#
#
# p ObjectSpace.each_object(Student).to_a

