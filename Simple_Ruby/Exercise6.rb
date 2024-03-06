# Write a Ruby program that takes a number as input,
# determines whether it's even or odd, and prints the result.

puts "Input number:"
x = gets.chomp.to_i

  if x.even? == true
    print ("#{x} is an even number.\n")
  else
    print ("#{x} is an odd number.\n")
  end
