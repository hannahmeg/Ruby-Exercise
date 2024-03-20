# Write a Ruby program that receives an array of product quantities.
# For each product, if the quantity is greater than 50, mark it as
# "In Stock"; otherwise, mark it as "Low Stock."

#while code
puts "Input product quantity, press enter if none follows:"
quantities = []
while true
  input = gets.chomp
  break if input.empty?
  quantities << input.to_i
end

index = 0
while index < quantities.size
  quantity = quantities[index]

  if quantity > 50
    quantity = "In Stock"
  else
    quantity = "Low Stock"
  end
  p quantity
  index += 1
end