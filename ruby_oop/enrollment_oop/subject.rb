class Subject
  attr_accessor :id, :name
  @@subject_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    puts "List of Subjects:"
    @@subject_records.each do |subject|
      puts "#{subject.id} - #{subject.name}"
    end
  end

  def self.generate_samples
    subjects = [
      { id: '1', name: 'Mathematics' },
      { id: '2', name: 'English' },
      { id: '3', name: 'History' },
      { id: '4', name: 'Biology' },
      { id: '5', name: 'Chemistry' },
      { id: '6', name: 'Physics' },
      { id: '7', name: 'Computer Science' },
      { id: '8', name: 'Art' },
      { id: '9', name: 'Music' },
      { id: '10', name: 'Physical Education' }
    ]
    subjects.each do |element|
      subject = Subject.new(element[:id], element[:name])
      @@subject_records << subject
    end
  end
end

# Generate 10 Instances of Class Subject (user input)
# subjects = []
# input_count = 0
# puts "Input Subject ID and Subject Name separated by comma. Press enter after each entry and repeat 10 times."
# while input_count != 10
#   input = gets.chomp
#   subjects << input.split(", ")
#   input_count += 1
# end
#
# i = 0
# while i < subjects.size
#   subjects.each do |subject|
#     Subject.new(subject[0], subject[1])
#     i += 1
#   end
# end
#
# subjects = [
#   "Mathematics",
#   "English",
#   "History",
#   "Biology",
#   "Chemistry",
#   "Physics",
#   "Computer Science",
#   "Art",
#   "Music",
#   "Physical Education"
# ]
#
# i = 0
# j = 1
# while i < subjects.size
#   subjects.each do |course|
#     Subject.new(j, course)
#     i += 1
#     j += 1
#   end
# end


# p ObjectSpace.each_object(Subject).to_a