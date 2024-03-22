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

  def self.generate_samples
    subject_students1 = SubjectStudents.new('001', '011', '003', 'Friday 2024-03-22')
    subject_students2 = SubjectStudents.new('002', '012', '005', 'Friday 2024-03-22')
    @@subject_students << subject_students1
    @@subject_students << subject_students2
  end

end


