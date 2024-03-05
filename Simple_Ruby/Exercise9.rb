# Write a Ruby program that takes a year as input
# and checks whether it is a leap year. Print the result.

def determine_leap_year(year)

  if year%4 == 0
    print ("The year #{year} is a leap year.\n")
  else
    print ("The year #{year} is not a leap year.\n")
  end
end

p determine_leap_year(2015)