class Course
  attr_accessor :id, :name
  @@course_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    puts "List of Courses:"
    @@course_records.each do |course|
      puts "#{course.id} - #{course.name}"
    end
    # p ObjectSpace.each_object(Course).to_a
  end

  def self.generate_samples
    courses = [
      { id: '001', name: 'Bachelor of Arts in Psychology' },
      { id: '002', name: 'Bachelor of Science in Computer Science' },
      { id: '003', name: 'Bachelor of Business Administration' },
      { id: '004', name: 'Bachelor of Science in Nursing' },
      { id: '005', name: 'Bachelor of Fine Arts in Graphic Design' },
      { id: '006', name: 'Bachelor of Science in Mechanical Engineering' },
      { id: '007', name: 'Bachelor of Arts in English Literature' },
      { id: '008', name: 'Bachelor of Science in Biology' },
      { id: '009', name: 'Bachelor of Architecture' },
      { id: '010', name: 'Bachelor of Arts in History' }
    ]
    courses.each do |element|
      course = Course.new(element[:id], element[:name])
      @@course_records << course
    end
  end
end

# Generate 10 Instances of Class Course (with user input)
# courses = []
# input_count = 0
# puts "Input Course ID and Course Name separated by comma. Press enter after each entry and repeat 10 times."
# while input_count != 10
# input = gets.chomp
# courses << input.split(", ")
# input_count += 1
# end
#
# i = 0
# while i < courses.size
#   courses.each do |course|
#   Course.new(course[0], course[1])
#   i += 1
#   end
# end





