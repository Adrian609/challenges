class Cohort

  attr_reader :title, :start_date, :end_date, :students, :system_checks, :career_kickoff

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
    @career_kickoff = @end_date + 4
  end

  def enroll(student)
    if(!@students.include?(student))
      @students << student
    end
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    string = "#{title}:\n"
    @students.each do |student|
      string += "\t#{student.name}: #{student.email}\n"
    end
    string
  end

  def system_check_completed?(system_check)
    return true if system_check.submissions.count == @students.size
    false
  end

end
