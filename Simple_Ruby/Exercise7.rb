# Write a Ruby program that takes a temperature in Celsius as input,
# converts it to Fahrenheit, and prints the result.

def make_fahrenheit(celcius)
  fahrenheit = (celcius * 9/5) + 32
  print ("The fahrenheit of #{celcius}°C is #{fahrenheit}°F.\n")
end

p make_fahrenheit(10)