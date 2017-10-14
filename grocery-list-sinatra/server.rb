require "sinatra"
require "sinatra/reloader"
require "csv"
require "pry"
require "erb"
require_relative "models/grocery"

set :bind, '0.0.0.0'

get "/" do
  redirect '/grocery-list'
end

get "/grocery-list" do
  @groceries = []
  CSV.foreach('grocery_list.csv', headers: true) do |row|
    @groceries << row.to_hash
  end
  @groceries
  erb :groceryList
end

post '/grocery-list' do
  item = params["name"]
  if item != ""
    CSV.open("grocery_list.csv", "a", headers: true) do |csv|
      csv << [item]
    end
    redirect '/grocery-list'
  else
    @error = "Please fill out all forms."
    # @groceries = []
    # CSV.foreach('grocery_list.csv', headers: true) do |row|
    #   @groceries << row.to_hash
    # end
    # erb :groceryList
  end
end
