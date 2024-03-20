class Course
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end


# Generate 10 Instances of Class Course
courses = []
input_count = 0
puts "Input Course ID and Course Name separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
input = gets.chomp
courses << input.split(", ")
input_count += 1
end


i = 0
while i < courses.size
  courses.each do |course|
  Course.new(course[0], course[1])
  i += 1
  end
end

p ObjectSpace.each_object(Course).to_a







