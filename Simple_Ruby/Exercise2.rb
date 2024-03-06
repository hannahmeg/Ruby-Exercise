# Write a Ruby program that takes two numbers as variables, performs basic arithmetic operations
# (addition, subtraction, multiplication, and division), and prints the results.
# Have variables for two numbers.
# Perform addition, subtraction, multiplication, and division on the two numbers.
# Print a message that includes the original numbers and the results of each operation.

def calculate(a,b)
  sum = a+b
  diff = a-b
  product = a*b
  quot = a/b

  print ("The first number is #{a} and the second number is #{b}. The sum is #{sum}, difference is #{diff}, product is #{product}, and the quotient is #{quot}.")
end

calculate(9, 5)


