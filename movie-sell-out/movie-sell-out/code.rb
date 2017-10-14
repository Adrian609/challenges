class Theater
attr_reader :capacity

  def initialize(capacity = 0)
    @capacity = capacity
    #puts "CAPACITY = #{@capacity}"
    @numberOfPatrons = 0
  end

  def admit!(numberAdmitted = 1)
    if(@numberOfPatrons + numberAdmitted >= @capacity)
      puts "Sorry, too many patrons"
    else
      @numberOfPatrons += numberAdmitted
    end
  end

  def at_capacity?
    @numberOfPatrons >= @capacity
  end

  def record_walk_outs!(walk_out = 1)
    @numberOfPatrons -= walk_out
    if(@numberOfPatrons < 0)
      @numberOfPatrons = 0
    end
    return "Total patrons = #{@numberOfPatrons}"
  end

end

thisTheater = Theater.new(56)

puts thisTheater.admit!(1)
puts thisTheater.at_capacity?
puts thisTheater.record_walk_outs!(60)
puts thisTheater.at_capacity?
