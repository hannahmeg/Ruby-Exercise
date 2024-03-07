# Write a Ruby program that takes a year as input
# and checks whether it is a leap year. Print the result.


# script code
puts "Enter year:"
year = gets.chomp.to_i
  if year % 4 == 0 || year % 100 == 0 || year % 400 == 0
    print ("The year #{year} is a leap year.\n")
    else
    print ("The year #{year} is not a leap year.\n")
  end


# method code
# def is_leap_year? (year)
#   year % 4 == 0 || year % 100 == 0 || year % 400 == 0
# end
#
# puts "Enter year:"
# year = gets.chomp.to_i
# p is_leap_year? (year)


