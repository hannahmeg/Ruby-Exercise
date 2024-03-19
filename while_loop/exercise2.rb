# Develop a Ruby program that receives an array of ages and counts how many individuals
# fall into each age group: "Child" (12 or younger), "Teenager" (13 to 19), and "Adult" (20 or older).

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