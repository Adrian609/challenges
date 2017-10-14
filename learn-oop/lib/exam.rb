class Exam
  attr_reader :title, :due_date
  attr_writer :assigned_to
  attr_accessor :grade
  def initialize(title, due_date)
    @grade = nil
    @assigned_to = nil
    @title = title
    @due_date = due_date
  end

  def assigned_to=(student)
    @assigned_to = student
  end

end
