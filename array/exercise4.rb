# Write a Ruby script that takes an array of integers.
# For each number, determine and store whether it's positive, negative, or zero.

def classify_integer

  puts "Input numbers, press enter if none follows:"
  numbers = []
  while true
    input = gets.chomp
    break if input.empty?
    numbers << input.to_f
  end

  numbers.map do |number|
    if number == 0
      number = "Zero"
    elsif number != 0 && number > 0
      number = "Positive"
    elsif number != 0 && number < 0
      number = "Negative"
    end
  end
end

p classify_integer