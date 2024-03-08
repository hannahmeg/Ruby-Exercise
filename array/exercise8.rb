# Develop a Ruby program that receives an array of daily weather conditions.
# For each day, output "Sunny" if the conditions include the keyword "sun,"
# "Rainy" if it includes "rain," and "Cloudy" otherwise.


#
# daily_weather_conditions = []
#
# (/sun/)
# "Sunny"
#
# (/rain/)
# "Rainy"
#
# else
# "Cloudy"


# def identify_weather_condition
#---------------------
  weather_conditions = [{day: "Sunday", condition: nil}, {day: "Monday", condition: nil},
  {day: "Tuesday", condition: nil},{day: "Wednesday", condition: nil},{day: "Thursday", condition: nil},
  {day: "Friday", condition: nil},{day: "Saturday", condition: nil}]


weather_conditions.each do |k,v|
  puts "How is the weather this #{k[:day]}?:"
  input = gets.chomp
  if input.match(/sun/)
    weather_conditions[0][:condition] = "Sunny"
  elsif input.match(/rain/)
    weather_conditions[0][:condition] = "Rainy"
  # elsif
  # weather_conditions[0][:condition] = "Cloudy"

  end
  end


p weather_conditions
# p weather_conditions
# puts "How is the weather this Sunday?:"
# answer1 = gets.chomp
# if answer1.match(/sun/)
#   weather_conditions[0][:condition] = "Sunny"
# elsif answer1.match(/rain/)
#   weather_conditions[0][:condition] = "Rainy"
#   elsif
# p weather_conditions

    # ---------------
# puts "How is the weather this Monday?:"
# answer2 = gets.chomp
# weather_conditions[1][:condition] = answer1
#
# puts "How is the weather this Tuesday?:"
# answer3 = gets.chomp
# weather_conditions[2][:condition] = answer1
#
# puts "How is the weather this Wednesday?:"
# answer4 = gets.chomp
# weather_conditions[3][:condition] = answer1
#
# puts "How is the weather this Thursday?:"
# answer5 = gets.chomp
# weather_conditions[4][:condition] = answer1
#
# puts "How is the weather this Friday?:"
# answer6 = gets.chomp
# weather_conditions[5][:condition] = answer1
#
# puts "How is the weather this Saturday?:"
# answer7 = gets.chomp
# weather_conditions[6][:condition] = answer1









#   numbers.map do |number|
#     if number == 0
#       number = "Zero"
#     elsif number != 0 && number > 0
#       number = "Positive"
#     elsif number != 0 && number < 0
#       number = "Negative"
#     end
#   end
# end
#



# weather_conditions = {"Sunday" => nil, monday: nil, tuesday: nil,
# wednesday: nil, thursday: nil, friday: nil, saturday: nil}

# puts "What is the weather condition on Sunday?"
# sunday = gets.chomp
# weather_conditions << sunday
# p weather_conditions[:sunday]
# puts "How is the weather this Sunday?:"
# answer1 = gets.chomp
# if answer1.match(/sun/)
#   weather_conditions[0][:condition] = "Sunny"
# elsif answer1.match(/rain/)
#   weather_conditions[0][:condition] = "Rainy"
# elsif
#
# weather_conditions.each do |element|
#   puts "What is the weather condition on #{element}?"
#   input = gets.chomp
#   weather_conditions[:element] = input
# end
#
# p weather_conditions