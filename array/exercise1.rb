# Write a Ruby program that receives an array of student exam scores.
# For each score, classify and store the grade as "A" if the score is 90 or above,
# "B" if it's between 80 and 89, "C" for scores between 70 and 79, and "D" for scores below 70.

def classify_score(scores = [])

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


p classify_score([90, 91, 71, 60])