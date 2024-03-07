# Write a Ruby program that takes a base and an exponent as variables,
# calculates the result of raising the base to the exponent, and prints the result.


# script code
puts "Input the base digit:"
base = gets.chomp.to_i
puts "Input the exponent digit:"
exponent = gets.chomp.to_i

answer = base ** exponent
print ("The answer is #{answer}.")

# method code
# def exponentiation
#   puts "Input the base digit:"
#   base = gets.chomp.to_i
#   puts "Input the exponent digit:"
#   exponent = gets.chomp.to_i
#
#   answer = base ** exponent
#   print ("The answer is #{answer}.")
# end
#
# exponentiation