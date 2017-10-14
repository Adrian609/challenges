require "sinatra"
require "sinatra/reloader"
require "json"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/" do
  erb :home
end

get "/api/v1/questions.json" do
  #For Exceeds Only
  # "hello"
  # file = File.read('questions.json')
  # data = JSON.parse(file)
  # data['data']['children'].each do |child|
  #     puts child['data']['body']
  # end
  #Use questions.json to pull a random question for your question data
end
