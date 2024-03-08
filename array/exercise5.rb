# Create a Ruby program that accepts an array of purchase amounts.
# For each purchase, apply a 15% discount if the amount is greater than $100,
# a 10% discount if it's between $50 and $100, and no discount if it's below $50.
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
    if amount > 100
      new_amount = (amount - (amount *= 0.15))
      new_amounts.push new_amount

    elsif amount >= 50 && amount <= 100
      new_amount = (amount - (amount *= 0.10))
      new_amounts.push new_amount

    elsif amount < 50
      new_amounts.push amount
    end
  end
  puts "The discounted prices are: #{new_amounts}"
end

discount