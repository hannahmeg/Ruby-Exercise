# Write a Ruby program that takes the length and width of a rectangle as variables,
# calculates the area, and prints the result.

puts "What is the length?"
length = gets.chomp.to_i
puts "What is the width?"
width = gets.chomp.to_i

area = length * width
print ("The area of the rectangle is #{area}.")
