# Drew André - Launch Academy Ignition week #4: Compound Data Structure Drills - Average Grades
# 8.6.17

jane_grades = [98,95,88,97,74]
samantha_grades = [85,93,98,88,49]

# Part One
def get_average_grades_from_array(array)
  sum = 0.0
  result = 0.0
  if array.empty? != true
    array.each do |item|
      sum += item
    end
    result = sum / array.length
  end
  return result
end

jane_average = get_average_grades_from_array(jane_grades)
puts "Jane's grades are #{jane_grades}, and her average is #{jane_average}."

# Part Two
def get_letter_grade_from_average(average)
	if average >= 90.0
		return "A"
	elsif average >= 80.0
		return "B"
	elsif average >= 70.0
		return "C"
	elsif average >= 60.0
		return "D"
	else
		return "F"
	end
end

jane_letter_grade = get_letter_grade_from_average(jane_average)
puts "Jane's grades are #{jane_grades}, and her letter grade is #{jane_letter_grade}."

def rankings(students)
	if students.empty? != true
  	students.each_with_index do |student, index|
  	  puts "#{index + 1}: #{student}"
 	 	end
	end
end

rankings(['Johnny', 'Jane', 'Sally', 'Elizabeth', 'Michael'])


# Part Three experiments
# grades = {
# 	Jane: [98,95,88,97,74],
# 	Samantha: [85,93,98,88,49],
# 	Matt: [87,93,89,97,65]
# }

# def rankings(student_grades)
# 	average_grades = []
# 	student_grades.each do |student, grade|
# 		average_grades = get_average_grades_from_array(grade)
# 	end
# 	return average_grades
# end

