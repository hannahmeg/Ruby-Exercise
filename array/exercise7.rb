# Create a Ruby script that takes an array of student exam results,
# represented as percentages. For each result, classify and store it as
# "Pass" if the percentage is 50 or above, and "Fail" otherwise.

def classify_exam_results

  puts "Input exam results percentage. Press enter if none follows:"
  exam_results = []
  while true
    input = gets.chomp
    break if input.empty?
    exam_results << input.to_i
  end

  exam_results.map do |exam_result|
    if exam_result > 50
      exam_result = "Pass"
    else
      exam_result = "Fail"
    end
  end
end

p classify_exam_results