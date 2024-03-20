class Room
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

# Generate 10 Instances of Class Room
rooms = []
input_count = 0
puts "Input Room Number and Room Name separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
  input = gets.chomp
  rooms << input.split(", ")
  input_count += 1
end


i = 0
while i < rooms.size
  rooms.each do |room|
    Room.new(room[0], room[1])
    i += 1
  end
end

p ObjectSpace.each_object(Room).to_a