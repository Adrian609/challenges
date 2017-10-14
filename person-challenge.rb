# Drew André - Launch Academyn - Week 1: Advanced OOP
# 9.5.17

#--------------------- PART I ---------------------#
class Person
  attr_reader :first_name, :middle_name, :last_name

  def initialize(first_name, middle_name = "", last_name = "")

    if (first_name && middle_name && last_name) #if three arguments are given, assume it is first name, middle name, last name
      @first_name = first_name.capitalize
      @middle_name = middle_name.capitalize
      @last_name = last_name.capitalize
      #puts "THREE NAMES: first name = #{first_name}, middle_name = #{middle_name}, last name = #{last_name}" #debugging
    elsif (first_name && middle_name) #if two arguments are given, assume it is first name, last name
      @first_name = first_name
      @last_name = middle_name
      #puts "TWO NAMES: first name = #{first_name}, last name = #{last_name}" #debugging
    else #if only one argument is given, assume it is full name
      @first_name = first_name.split(/[\s,]+/) #reference: http://bit.ly/2f0Al8S
      #@first_name = name[0]
      #puts "FULL NAME: full name = #{first_name}" #debugging
    end
  end

  def name_summary
    puts "#{first_name} #{middle_name} #{last_name}"
  end

end

#me = Person.new('drew', 'james', 'andré')
#me = Person.new('drew', 'andré')
me = Person.new('drew james andré')
me.name_summary
