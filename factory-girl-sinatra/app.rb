require "pry"
require "sinatra"
require "sinatra/activerecord"
require "sinatra/json"
require "sinatra/reloader"

set :bind, "0.0.0.0"
set :database_file, "config/database.yml"

Dir[File.join(File.dirname(__FILE__), "models", "*.rb")].sort.each do |file|
  require file
  also_reload file
end

get "/recipes.json" do
  recipes = Recipe.all
  recipes.all.map(&:to_hash)
  json recipes
end
