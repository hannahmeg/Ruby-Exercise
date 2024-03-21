# Course  # attributes:  id, name
# Subject # attributes: id, name
# Teacher # attributes: id, name, birth_date, specialty, email
# Student # attributes: id, name, birth_date, course_id, parent
# Room    # attributes: id, name
# 1. For each class, create a class method that will generate 10 instances of course, subject, teacher and students, rooms
# 2. Create a script that will show all the students & courses data
# 3. allow the user to be able to pick the student and assign to a specific course
# 4. Create a new class SubjectStudents
# 5. SubjectStudents => attributes: subject_id, student_id, teacher_id, day (monday, tuesday)
# 6. Display the list of students, teachers and subjects
# 7. Allow the user to create SubjectStudents by choosing the following students, teachers and subjects

require_relative 'course'
require_relative 'subject'
require_relative 'room'
require_relative 'student'
require_relative 'teacher'
require_relative 'subject_students'
require 'date'

Course.generate_samples
Subject.generate_samples
Student.generate_samples
Teacher.generate_samples

p SubjectStudents.list
# Intro
puts "Welcome to the Enrollment Portal. Press any key to continue."
gets.chomp

# Student Select
puts "List of Students:"
Student.list.each do |student|
  puts "---------------------------"
  puts "Student Name: #{student.name}"
  puts "Student ID: #{student.id}"
  puts "Course ID: #{student.course_id}"
end

puts "---------------------------"
puts "Select student to enroll. Input student ID below."

valid_ids = []
Student.list.each do |student|
  valid_ids << student.id
end
student_input = gets.chomp

if valid_ids.include?(student_input)
  puts "You are enrolling Student No.#{student_input}. Press any key to see subjects."

else
  puts "Error. Please select a valid student ID"
  return
end

gets.chomp

# Subject Select
puts "List of Subjects:"
Subject.list.each do |subject|
  puts "#{subject.id} - #{subject.name}"
end

puts "Select a subject to enroll in. Input subject ID below."

valid_ids = []
Subject.list.each do |subject|
  valid_ids << subject.id
end
subject_input = gets.chomp
if valid_ids.include?(subject_input)
  puts "You are enrolling Student No.#{student_input} in Subject No.#{subject_input}. Press any key to see teachers."
  gets.chomp
else
  puts "Error. Please select a valid subject ID"
  return
end



# Teacher Select
Teacher.list
puts "Select a Teacher. Input teacher ID below."

valid_ids = []
Teacher.teacher_records.each do |teacher|
  valid_ids << teacher.id
end
teacher_input = gets.chomp
if valid_ids.include?(teacher_input)
  puts "You've selected teacher ID #{teacher_input}. Press any key to see complete details of your enrollment."
else
  puts "Error. Please select a valid teacher ID"
  return
end

# Review details
day = Date.today.strftime("%A %Y-%m-%d")
puts "---------------------------"
puts "Student ID: #{student_input}"
puts "Subject: #{subject_input}"
puts "Teacher: #{teacher_input}"
puts "Date: #{day}"

# Save
puts "Would you like to save? (y/n)"
save_input = gets.chomp
if save_input == 'y' || save_input == 'yes'
  new_enrollment = SubjectStudents.new(subject_input, student_input, teacher_input, day)
  new_enrollment.save
  puts "Enrollment successful."
else
  puts "Enrollment unsuccessful. Please try again."
end

# Check data
p SubjectStudents.list






# SubjectStudents.list.each do |subject_students|
#   puts "---------------------------"
#   puts "Student Name: #{subject_students.student_id}"
#   puts "Course: #{subject_students.student_id}"
#   puts "Subject: #{subject_students.subject_id}"
#   puts "Teacher: #{subject_students.teacher_id}"
#   puts "Date enrolled: #{subject_students.day}"
# end



# p Student.student_records

# ENROLLSTUDENT:
#
#   %w[
#   add_student
#   show_student
#   add_teacher
#   add_course
#   add_room
#   add_subject
#   enroll_student
# ]
#
# []

# studnet_id
# name
# birthdate
# course_id
#
# student details
# do you want to save? (y/n)?
#
# @@studnet_records <<

