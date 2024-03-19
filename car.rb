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
end

Cars = [
  Car.new('black', 'Bugatti', 'Chiron Super Sport 300+
', '2019', 'class 1'),
  Car.new('gray', 'Pagani', 'Huayra Roadster BC', '2019', 'class 2'),
  Car.new('red', 'Ferrari', 'SF90 Stradale', '2019', 'class 1'),
  Car.new('yellow', 'Lamborghini', 'Sian', '2020', 'class 1'),
  Car.new('black', 'Aston Martin', 'Valkyrie', '2022', 'class 3'),
  Car.new('gray', 'McLaren', 'Speedtail', '2018', 'class 1'),
  Car.new('black', 'Mercedes', 'AMG One', '2022', 'class 1'),
  Car.new('black', 'Rimac', 'Nevera', '2022', 'class 3'),
  Car.new('black', 'Koenigsegg', 'Gemera', '2024', 'class 3'),
  Car.new('black', 'Porsche', '911 GT3 RS', '2022', 'class 2'),
]

Cars[1].serial_number = ''
Cars[1].plate_number = ''
