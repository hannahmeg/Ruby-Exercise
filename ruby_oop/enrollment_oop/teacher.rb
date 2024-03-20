class Teacher
  attr_accessor :id, :name, :birth_date, :specialty, :email
  def initialize(id, name, birth_date, specialty, email)
    @id = id
    @name = name
    @birth_date = birth_date
    @specialty = specialty
    @email = email
  end
end

# Generate 10 Instances of Class Teacher
teachers = []
input_count = 0
puts "Input Teacher ID, Teacher Name, Birthdate, Specialty, and Email separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
  input = gets.chomp
  teachers << input.split(", ")
  input_count += 1
end


i = 0
while i < teachers.size
  teachers.each do |teacher|
    Teacher.new(teacher[0], teacher[1], teacher[2], teacher[3], teacher[4])
    i += 1
  end
end

p ObjectSpace.each_object(Teacher).to_a

