# Create a Ruby script that takes an array of student exam results,
# represented as percentages. For each result, classify and store it as
# "Pass" if the percentage is 50 or above, and "Fail" otherwise.

#while code
puts "Input exam results percentage. Press enter if none follows:"
exam_results = []
while true
  input = gets.chomp
  break if input.empty?
  exam_results << input.to_i
end

index = 0
while index < exam_results.size
  exam_result = exam_results[index]

  if exam_result > 50
    exam_result = "Pass"
  else
    exam_result = "Fail"
  end
  p exam_result
  index += 1
end