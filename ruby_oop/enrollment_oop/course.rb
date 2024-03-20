# Course  # attributes:  id, name
# Subject # attributes: id, name
# Teacher # attributes: id, name, birth_date, specialty, email
# Student # attributes: id, name, birth_date, course_id, parent
# Room    # attributes: id, name
#
# For each class, create a class method that will generate 10 instances of course, subject, teacher and students, rooms
# Create a script that will show all the students & courses data
# allow the user to be able to pick the student and assign to a specific course
# Create a new class SubjectStudents
#SubjectStudents => attributes: subject_id, student_id, teacher_id, day
#Display the list of students, teachers and subjects
#Allow the user to create SubjectStudents by choosing the following students, teachers and subjects

class Course
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

class Subject
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end
end

class Teacher
  attr_accessor :id, :name, :birth_date, :specialty, :email
  def initialize(id, name)
    @id = id
    @name = name
    @birth_date = birth_date
    @specialty = specialty
    @email = email
  end
end

class Student
  attr_accessor :id, :name, :birth_date, :course_id, :parent

  def initialize(id, name)
    @id = id
    @name = name
    @birth_date = birth_date
    @course_id = course_id
    @parent = parent
  end
end

class Room
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def self.count
    all.count
  end
end
#


subjects = []
input_count = 0
puts "Input Subject ID and Subject Name separated by comma. Press enter after each entry and repeat 10 times."
while input_count != 10
input = gets.chomp
subjects << input.split(", ")
input_count += 1
end


i = 0
while i < subjects.size
  subjects.each do |subject|
  Course.new(subject[0], subject[1])
  i += 1
  end
end

p ObjectSpace.each_object(Course).to_a


