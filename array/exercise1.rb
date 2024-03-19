# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.


def classify_score

  puts "Input grades, press enter if none follows:"
  scores = []
  while true
    input = gets.chomp
    break if input.empty?
    scores << input.to_i
  end

  scores.map do |score|
    if score >= 90
      score = "A"
    elsif score >= 80 && score <= 89
      score = "B"
    elsif score >= 70 && score <= 79
      score = "C"
    elsif score < 70
      score = "D"
    end
  end
end

p classify_score



while code example
names = %w[Mike John Mark Jeff Rex]
index = 0

while index < names.size
  p "Name: #{names[index]} => Index: #{index}"
  index += 1
end



# ------

# scores = []
# puts "Input grades separated by comma:"
# input = gets.chomp.to_i
# scores.push (input)
#
# grade_a = []
# grade_b = []
# grade_c = []
# grade_d = []
#
#   scores.map do |score|
#     if score >= 90
#       grade_a << score
#     elsif score >= 80 && score <= 89
#       grade_b << score
#     elsif score >= 70 && score <= 79
#       grade_c << score
#     elsif score < 70
#       grade_d << score
#     end
#   end
#
# p "Grade A: #{grade_a}"
# p "Grade B: #{grade_b}"
# p "Grade C: #{grade_c}"
# p "Grade D: #{grade_d}"
#
