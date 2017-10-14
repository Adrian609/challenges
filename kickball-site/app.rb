require "sinatra"
require "sinatra/reloader"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

@teams = []
TeamData::ROLL_CALL.each do |team|
  @teams << Team.new(team)
end

get "/" do
  "<h1>The LACKP Homepage</h1>
  <a href=\"/teams\">View Teams</a>"
  # redirect to('/teams')

end

get "/teams" do
  @teams = Team.all
  erb :teams
end

get "/teams/:team_name" do
  @team_name = params[:team_name]
  @teams
  erb :team_detail
end
