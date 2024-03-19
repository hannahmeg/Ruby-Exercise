# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.

# while code
puts "Input grades, press enter if none follows:"

scores = []
while true
  input = gets.chomp
  break if input.empty?
  scores << input.to_i
end

index = 0
while index < scores.size
  score = scores[index]

  if score >= 90;
    score = "A"
  elsif score >= 80 && score <= 89
    score = "B"
  elsif score >= 70 && score <= 79
    score = "C"
  elsif score < 70
    score = "D"
  end
  p score
  index += 1
end
