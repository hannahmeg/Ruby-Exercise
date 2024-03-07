# Write a Ruby program that takes the length and width of a
# rectangle as variables, calculates the area, and prints the result.

# script code
puts "What is the length?"
l = gets.chomp.to_i
puts "What is the width?"
w = gets.chomp.to_i
area = l * w
print "The area of the rectangle is #{area}."


# method code
# def calculate_area
#   puts "What is the length?"
#   l = gets.chomp.to_i
#   puts "What is the width?"
#   w = gets.chomp.to_i
#
#   area = l * w
#
#   print "The area of the rectangle is #{area}."
# end
#
# calculate_area