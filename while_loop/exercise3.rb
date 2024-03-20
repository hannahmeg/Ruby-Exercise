# Develop a Ruby program that receives an array of ages and counts how many individuals
# fall into each age group: "Child" (12 or younger), "Teenager" (13 to 19), and "Adult" (20 or older).

#while code
puts "Input ages, press enter if none follows:"
ages = []
while true
  input = gets.chomp
  break if input.empty?
  ages << input.to_i
end

child = []
teenager = []
adult = []

index = 0
while index < ages.size
  age = ages[index]

  if age >= 1 && age <= 12
    child << age
  elsif age >= 13 && age <= 19
    teenager << age
  elsif age >= 20
    adult << age
  end
  index += 1
end

puts "Number of children: #{child.length}"
puts  "Number of teenagers: #{teenager.length}"
puts  "Number of adults: #{adult.length}"
