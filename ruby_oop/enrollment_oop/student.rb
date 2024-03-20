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