# Write a Ruby program that takes the length and width of a rectangle as variables,
# calculates the area, and prints the result.

def calculate_area(length, width)
  area = length * width
  "The area of the rectangle is #{area}."
end

p calculate_area(9, 5)