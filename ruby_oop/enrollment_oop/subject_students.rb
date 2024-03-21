class SubjectStudents
  attr_accessor :subject_id, :student_id, :teacher_id, :day
  @@subject_students = []

  def initialize(subject_id, student_id, teacher_id, day)
    @subject_id = subject_id
    @student_id = student_id
    @teacher_id = teacher_id
    @day = day
  end

  def self.list
    @@subject_students
  end
  def save
    @@subject_students << SubjectStudents.new(subject_id, student_id, teacher_id, day)
  end
end


