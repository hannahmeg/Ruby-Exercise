class Subject
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

# Generate 10 Instances of Class Subject
subjects = []
input_count = 0
puts "Input Subject ID and Subject Name separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
  input = gets.chomp
  subjects << input.split(", ")
  input_count += 1
end


i = 0
while i < subjects.size
  subjects.each do |subject|
    Course.new(subject[0], subject[1])
    i += 1
  end
end