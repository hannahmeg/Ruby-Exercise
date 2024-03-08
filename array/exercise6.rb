# Write a Ruby program that receives an array of product quantities.
# For each product, if the quantity is greater than 50, mark it as
# "In Stock"; otherwise, mark it as "Low Stock."

def check_stock

  puts "Input product quantity, press enter if none follows:"
  quantities = []
  while true
    input = gets.chomp
    break if input.empty?
    quantities << input.to_i
  end

  quantities.map do |quantity|
    if quantity > 50
      score = "In Stock"
    else
      score = "Low Stock"
    end
  end
end

p check_stock