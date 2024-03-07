#Write a Ruby program that takes two variables as input,
# swaps their values, and prints the new values.

# script code
puts "Input 1st number:"
var1 = gets.chomp
puts "Input 2nd number:"
var2 = gets.chomp

tmp = var1
var1 = var2
var2 = tmp

p ("The first variable is now #{var1} and the second variable is now #{var2}.")


# method code
# def swap
#   puts "Input 1st number:"
#   var1 = gets.chomp
#   puts "Input 2nd number:"
#   var2 = gets.chomp
#
#   tmp = var1
#   var1 = var2
#   var2 = tmp
#
#   puts "The first variable is now #{var1} and the second variable is now #{var2}."
# end

swap