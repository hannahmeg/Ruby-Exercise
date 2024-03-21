# Course  # attributes:  id, name
# Subject # attributes: id, name
# Teacher # attributes: id, name, birth_date, specialty, email
# Student # attributes: id, name, birth_date, course_id, parent
# Room    # attributes: id, name
#
# 1. For each class, create a class method that will generate 10 instances of course, subject, teacher and students, rooms
# 2. Create a script that will show all the students & courses data
# 3. allow the user to be able to pick the student and assign to a specific course
# 4. Create a new class SubjectStudents
# 5. SubjectStudents => attributes: subject_id, student_id, teacher_id, day
# 6. Display the list of students, teachers and subjects
# 7. Allow the user to create SubjectStudents by choosing the following students, teachers and subjects

require_relative 'course'
require_relative 'subject'

Course.generate_samples
Course.list

Subject.generate_samples
Subject.list


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

# class SubjectStudents
#   attr_accessor :subject_id, :student_id, :teacher_id, :day
#
#   def initialize(subject_id, student_id, teacher_id, day))
#   @subject_id = subject_id
#   @student_id = student_id
#   @teacher_id = teacher_id
#   @day = day #date today
#   end
# end

