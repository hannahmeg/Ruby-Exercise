# Create a Ruby script that takes an array of daily temperatures.
# For each day, output "High" if the temperature is above 35 degrees Celsius,
# "Moderate" if it's between 20 and 35 degrees, and "Low" if it's below 20 degrees.

# def check_temp
#
#   puts "Input daily temperature, press enter if none follows:"
#   daily_temps = []
#   while true
#     input = gets.chomp
#     break if input.empty?
#     daily_temps << input.to_i
#   end
#
#   daily_temps.map do |daily_temp|
#     if daily_temp > 35
#       daily_temp = "High"
#     elsif daily_temp >= 20 && daily_temp <= 35
#       daily_temp = "Moderate"
#     elsif daily_temp < 20
#       daily_temp = "Low"
#     end
#   end
# end
#
# p check_temp


# while code
puts "Input daily temperature, press enter if none follows:"

temperatures = []
while true
  input = gets.chomp
  break if input.empty?
  temperatures << input.to_i
end

index = 0
while index < temperatures.size
  temperature = temperatures[index]

  if temperature > 35
    temperature = "High"
  elsif temperature >= 20 && temperature <= 35
    temperature = "Moderate"
  elsif temperature < 20
    temperature = "Low"
  end
  p temperature
  index += 1
end