require_relative "player"
require_relative "team"
require_relative "team_data"

teams = []
TeamData::ROLL_CALL.each do |team|
  teams << Team.new(team)
end
