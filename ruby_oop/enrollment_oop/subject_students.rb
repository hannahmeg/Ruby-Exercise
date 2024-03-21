class SubjectStudents
  attr_accessor :subject_id, :student_id, :teacher_id, :day

  def initialize(subject_id, student_id, teacher_id, day))
  @subject_id = subject_id
  @student_id = student_id
  @teacher_id = teacher_id
  @day = day #MM/DD/YYYY (ex.: 03/21/2024)
  end
end