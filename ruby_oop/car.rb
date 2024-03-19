# new attributes car_type class 1 class 2 class 3, plate_number
# Create an array on instance of car (atleast 10 or )
#
# 1. filter the array of car class and return cars with class type 1
# 2. Print plate_number
# 3. Return most common color
# 4. modify the decrease speed to avoid negative number
# 5. create a script that will change the speed of the class (make it random)
# 6. Modify the color of each car randomly (loop)



class Car
  attr_accessor :color
  attr_reader :model, :year, :car_type, :manufacturer
  attr_writer :serial_number, :plate_number

  def initialize(color, manufacturer, model, year, car_type)
    @speed = 0
    @color = color
    @manufacturer = manufacturer
    @model = model
    @year = year
    @car_type = car_type
  end

  def details
    {
      color: color,
      manufacturer: manufacturer,
      model: model,
      year: year,
      car_type: car_type,
      serial_number: @serial_number,
      plate_number: @plate_number
    }
  end

  def speed
    @speed
  end

  def increase_speed
    @speed += 1
  end

  def decrease_speed
    if speed <= 0
      @speed = 0
    else
      @speed -= 1
    end
  end

  def randomize_speed
    @speed = rand(10)
  end

  def randomize_color
    colors = %w[black blue red yellow pink white gray]
    @color = colors[rand(colors.size-1)]
  end
end

cars = [
  Car.new('black', 'Bugatti', 'Chiron Super Sport 300+
', '2019', 'Class 1'),
  Car.new('gray', 'Pagani', 'Huayra Roadster BC', '2019', 'Class 2'),
  Car.new('red', 'Ferrari', 'SF90 Stradale', '2019', 'Class 1'),
  Car.new('yellow', 'Lamborghini', 'Sian', '2020', 'Class 1'),
  Car.new('black', 'Aston Martin', 'Valkyrie', '2022', 'Class 3'),
  Car.new('gray', 'McLaren', 'Speedtail', '2018', 'Class 1'),
  Car.new('black', 'Mercedes', 'AMG One', '2022', 'Class 1'),
  Car.new('black', 'Rimac', 'Nevera', '2022', 'Class 3'),
  Car.new('black', 'Koenigsegg', 'Gemera', '2024', 'Class 3'),
  Car.new('black', 'Porsche', '911 GT3 RS', '2022', 'Class 2'),
]

cars[0].serial_number = 'X123'
cars[0].plate_number = 'ABC 000'

cars[1].serial_number = 'X124'
cars[1].plate_number = 'ABC 001'

cars[2].serial_number = 'X125'
cars[2].plate_number = 'ABC 002'

cars[3].serial_number = 'X126'
cars[3].plate_number = 'ABC 003'

cars[4].serial_number = 'X127'
cars[4].plate_number = 'ABC 004'

cars[5].serial_number = 'X128'
cars[5].plate_number = 'ABC 005'

cars[6].serial_number = 'X129'
cars[6].plate_number = 'ABC 006'

cars[7].serial_number = 'X130'
cars[7].plate_number = 'ABC 007'

cars[8].serial_number = 'X131'
cars[8].plate_number = 'ABC 008'

cars[9].serial_number = 'X132'
cars[9].plate_number = 'ABC 009'


# 1. filter the array of car class and return cars with class type 1
def filter_class_one
  puts "Class 1 cars are:"
  cars.each do |car|
  if car.details[:car_type] == 'Class 1'
  puts "#{car.details[:manufacturer]} #{car.details[:model]}" end
  end
end

# 2. Print plate_number
def print_plate_number
  cars.each do |car|
    puts "#{car.details[:model]} => #{car.details[:plate_number]}"
  end
end

# 3. Return most common color
colors_count = cars.group_by { |car| car.color }.transform_values(&:count)
most_common_color = colors_count.max_by { |color, count| count }.first

puts "The most common color is #{most_common_color}"

# 4. modify the decrease speed to avoid negative number
cars[0].increase_speed
cars[0].decrease_speed
cars[0].decrease_speed
cars[0].decrease_speed
p cars[0].speed

# 5. create a script that will change the speed of the class (make it random)
cars[1].randomize_speed
p cars[1].speed

# 6. Modify the color of each car randomly (loop)
cars[0].randomize_color
puts cars[0].color

#
# Cars.each do |car|
#   current_color = ''
#   current_count = 0
#   most_common_color = ''
#   if
#   car.color == car.color
#   end
# end

# index = 0
# while index < Cars.size
#   current_color = Cars[index].color
#   current_count = 0
#   most_common_color = ''
#   if
#   Cars[index].color == Cars[Cars.size-1].color
#     current_count += 1
#   else
#     current_count = current_count
#   end
#
# end


