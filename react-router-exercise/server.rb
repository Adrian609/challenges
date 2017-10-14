require 'sinatra'

get '*' do
  send_file File.expand_path('index.html', settings.public_folder)
end

get '/greeting' do
  send_file File.expand_path('app/Greeting.js', settings.public_folder)
end
