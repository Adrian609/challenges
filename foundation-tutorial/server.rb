require 'sinatra'
require 'sinatra/reloader'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  erb :index
end
