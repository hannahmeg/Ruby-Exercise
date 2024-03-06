# Write a Ruby program that takes a year as input
# and checks whether it is a leap year. Print the result.

year = gets.chomp
  if year%4 == 0
    print ("The year #{year} is a leap year.\n")
  else
    print ("The year #{year} is not a leap year.\n")
  end
