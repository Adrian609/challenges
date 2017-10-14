require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative './models/recipe'
require_relative './models/comment'


set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  redirect '/recipes'
end

get '/recipes' do
  @recipes = Recipe.all
  erb :index
end

get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  @comments = Comment.all
  erb :show
end
