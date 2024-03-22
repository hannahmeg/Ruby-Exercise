class Room
  attr_accessor :id, :name
  @@room_records = []

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.list
    @@room_records
  end

  def save
    @@room_records << Room.new(id, name)
  end

  def self.generate_samples
    rooms = [
      { id: '001', name: 'Room 101' },
      { id: '002', name: 'Room 202' },
      { id: '003', name: 'Room 303' },
      { id: '004', name: 'Room 404' },
      { id: '005', name: 'Room 505' },
      { id: '006', name: 'Room 606' },
      { id: '007', name: 'Room 707' },
      { id: '008', name: 'Room 808' },
      { id: '009', name: 'Room 909' },
      { id: '010', name: 'Room 1010' }
    ]

    rooms.each do |element|
      room = Room.new(element[:id], element[:name])
      @@room_records << room
    end
  end
end

# Generate 10 Instances of Class Room (with user input)
# rooms = []
# input_count = 0
# puts "Input Room Number and Room Name separated by comma. Press enter after each entry and repeat 10 times."
# while input_count != 10
#   input = gets.chomp
#   rooms << input.split(", ")
#   input_count += 1
# end
#
# i = 0
# while i < rooms.size
#   rooms.each do |room|
#     Room.new(room[0], room[1])
#     i += 1
#   end
# end

rooms = [
  "Room 101",
  "Room 202",
  "Room 303",
  "Room 404",
  "Room 505",
  "Room 606",
  "Room 707",
  "Room 808",
  "Room 909",
  "Room 1010"
]

i = 0
j = 1
while i < rooms.size
  rooms.each do |course|
    Room.new(j, course)
    i += 1
    j += 1
  end
end

#
# p ObjectSpace.each_object(Room).to_a