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
  student_course = ''
  Course.list.each do |course|
    if student.course_id == course.id
      student_course = course.name
    end
  end
  puts "Course Name: #{student_course}"
  puts "Course ID: #{student.course_id}"
end

puts "---------------------------"
puts "Select student to enroll. Input student ID below."

valid_ids = []
Student.list.each do |student|
  valid_ids << student.id
end
student_input_id = gets.chomp
student_input_name = ''

Student.list.each do |student|
  student_input_id == student.id
  student_input_name = student.name
end

if valid_ids.include?(student_input_id)
  puts "You are enrolling Student No.#{student_input_id}. Press any key to see subjects."

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
subject_input_id = gets.chomp
subject_input_name = ''

Subject.list.each do |subject|
  subject_input_id == subject.id
  subject_input_name = subject.name
end


if valid_ids.include?(subject_input_id)
  puts "You are enrolling Student No.#{student_input_id} in Subject No.#{subject_input_id}. Press any key to see teachers."
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
teacher_input_id = gets.chomp
teacher_input_name = ''

Teacher.list.each do |teacher|
  teacher_input_id == teacher.id
  teacher_input_name = teacher.name
end


if valid_ids.include?(teacher_input_id)
  puts "You've selected teacher ID #{teacher_input_id}. Press any key to see complete details of your enrollment."
else
  puts "Error. Please select a valid teacher ID"
  return
end

# Review details
day = Date.today.strftime("%A %Y-%m-%d")
puts "---------------------------"
puts "Student: #{student_input_id} - #{student_input_name}"
puts "Subject: #{subject_input_id} - #{subject_input_name}"
puts "Teacher: #{teacher_input_id} - #{teacher_input_name}"
puts "Enrollment Date: #{day}"

# Save
puts "Would you like to save? (y/n)"
save_input = gets.chomp
if save_input == 'y' || save_input == 'yes'
  new_enrollment = SubjectStudents.new(subject_input_id, student_input_id, teacher_input_id, day)
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

