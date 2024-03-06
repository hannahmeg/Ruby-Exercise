# Write a Ruby program that takes two variables as input,
# swaps their values, and prints the new values.

puts "Input 1st number:"
var1 = gets.chomp
puts "Input 2nd number:"
var2 = gets.chomp

temp = var1
var1 = var2
var2 = temp

print ("The first variable is now #{var1} and the second variable is now #{var2}.")
