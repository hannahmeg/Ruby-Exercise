require_relative 'person'

class Teacher < Person
  attr_accessor :specialty, :email
  @@teacher_records = []

  def initialize(id, name, birth_date, specialty, email)
    super(id, name, birth_date)
    @specialty = specialty
    @email = email
  end

  def self.list
    puts "List of Teachers:"
    @@teacher_records.each do |teacher|
      puts "---------------------------"
      puts "ID: #{teacher.id}"
      puts "Name: #{teacher.name}"
      puts "Specialty: #{teacher.specialty}"
      puts "Email: #{teacher.email}"
    end
  end

  def self.generate_samples
    teacher1 = Teacher.new('001', 'Caitlin', '07/25/1995', 'Programming', 'caitlin@gmail.com')
    teacher2 = Teacher.new('002', 'John', '11/10/1994', 'Mathematics', 'john@gmail.com')
    teacher3 = Teacher.new('003', 'Emily', '05/15/1996', 'English Literature', 'emily@gmail.com')
    teacher4 = Teacher.new('004', 'David', '02/28/1997', 'History', 'david@gmail.com')
    teacher5 = Teacher.new('005', 'Sarah', '09/03/1998', 'Biology', 'sarah@gmail.com')
    teacher6 = Teacher.new('006', 'Michael', '04/18/1996', 'Chemistry', 'michael@gmail.com')
    teacher7 = Teacher.new('007', 'Laura', '10/21/1995', 'Physics', 'laura@gmail.com')
    teacher8 = Teacher.new('008', 'Daniel', '06/14/1997', 'Art', 'daniel@gmail.com')
    teacher9 = Teacher.new('009', 'Rachel', '03/09/1996', 'Music', 'rachel@gmail.com')
    teacher10 = Teacher.new('010', 'Kevin', '08/05/1994', 'Physical Education', 'kevin@gmail.com')
    @@teacher_records << teacher1
    @@teacher_records << teacher2
    @@teacher_records << teacher3
    @@teacher_records << teacher4
    @@teacher_records << teacher5
    @@teacher_records << teacher6
    @@teacher_records << teacher7
    @@teacher_records << teacher8
    @@teacher_records << teacher9
    @@teacher_records << teacher10
  end
end