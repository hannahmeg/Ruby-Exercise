# Write a Ruby script that takes an array of integers.
# For each number, determine and store whether it's positive, negative, or zero.
# If the number is positive, append "Positive" to the result; for negative numbers, append "Negative";
# for zero, append "Zero."

#while code
puts "Input numbers, press enter if none follows:"
numbers = []
while true
  input = gets.chomp
  break if input.empty?
  numbers << input.to_f
end

index = 0
while index < numbers.size
  number = numbers[index]

  if number == 0
    puts "#{number} Zero"
  elsif number != 0 && number > 0
    puts "#{number} Positive"
  elsif number != 0 && number < 0
    puts "#{number} Negative"
  end
  index += 1
end