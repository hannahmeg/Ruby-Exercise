# Write a Ruby program that takes two variables as input,
# swaps their values, and prints the new values.

def swap(var1, var2)
  temp = var1
  var1 = var2
  var2 = temp
  "The first variable is now #{var1} and the second variable is now #{var2}."
end

p swap(1,2)