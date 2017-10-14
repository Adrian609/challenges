class SystemCheck

  attr_reader :submissions

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = 0.0
    @submissions.each do |submission|
      sum += submission.grade
    end
    sum /= @submissions.size
  end

  def did_student_complete_system_check?(student)
    @submissions.each do |submission|
      return true if submission.student == student
    end
    false
  end

end
