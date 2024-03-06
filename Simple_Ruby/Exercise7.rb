# Write a Ruby program that takes a temperature in Celsius as input,
# converts it to Fahrenheit, and prints the result.

puts "Input celcius:"
celcius = gets.chomp.to_i
fahrenheit = (celcius * 9/5) + 32
print ("The fahrenheit of #{celcius}°C is #{fahrenheit}°F.\n")

