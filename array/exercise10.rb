# Create a Ruby program that accepts an array of purchase amounts.
# For each purchase, apply a $20 discount if the amount is greater than $150,
# a $10 discount if it's between $75 and $150, and no discount if it's below $75.
# Store the discounted amounts in a new array.

def discount

  puts "Input amount, press enter if none follows:"
  amounts = []
  while true
    input = gets.chomp
    break if input.empty?
    amounts << input.to_i
  end

  new_amounts = []

  amounts.each do |amount|
    if amount > 150
      new_amount = (amount - (amount *= 0.2))
      new_amounts.push new_amount

    elsif amount >= 75 && amount <= 150
      new_amount = (amount - (amount *= 0.10))
      new_amounts.push new_amount

    elsif amount < 75
      new_amounts.push amount
    end
  end
  puts "The discounted prices are: #{new_amounts}"
end

discount