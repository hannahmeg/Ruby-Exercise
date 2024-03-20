# Develop a Ruby program that receives an array of daily weather conditions.
# For each day, output "Sunny" if the conditions include the keyword "sun,"
# "Rainy" if it includes "rain," and "Cloudy" otherwise.

# while code
weather_conditions = [{ day: "Sunday", condition: nil }, { day: "Monday", condition: nil },
                      { day: "Tuesday", condition: nil }, { day: "Wednesday", condition: nil }, { day: "Thursday", condition: nil },
                      { day: "Friday", condition: nil }, { day: "Saturday", condition: nil }]

index = 0
while index < weather_conditions.size
  weather_condition = weather_conditions[index]
  puts "How is the weather this #{weather_condition[:day]}?:"
  input = gets.chomp
  if input.match(/sun/)
    weather_condition[:condition] = "Sunny"
  elsif input.match(/rain/)
    weather_condition[:condition] = "Rainy"
  elsif
    weather_condition[:condition] = "Cloudy"
  end
  index += 1
end

weather_conditions.each do |weather_condition|
  puts "#{weather_condition[:day]}: #{weather_condition[:condition]}"
end


