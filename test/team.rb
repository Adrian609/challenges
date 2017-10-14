require_relative "./team_data"

class Team

  attr_reader :name

  def initialize(team)
    @name = team.shift
    @players = []
    team.each do |player|
      puts "Team: #{@name}"
      player.each do |position, player_name|
        @players << Player.new(player_name, position, @name)
      end
    end
  end

  def players
    name.each do |player|
      @players << player
    end
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end



end
