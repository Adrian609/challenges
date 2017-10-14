require "sinatra"
#require "sinatra/reloader"
require "pg"
require_relative "./app/models/article"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

# def array_of_article_objects
#   articles = []
#   articles.to_a.each do |article|
#     console.log(article)
#     article << Article.new(article.title, article.url, article.description)
#   end
#   return articles
# end

get '/' do
  redirect '/articles'
end

get '/articles' do
  @articles = nil
  db_connection do |conn|
    @articles = conn.exec("SELECT * FROM articles")
  end
  @articles.to_a
  erb :index
end

get '/articles/new' do
  erb :new
end

post '/articles/new' do

  @article_title = params['article_title']
  @url = params['url']
  @description = params['description']

  if @title != ""
    db_connection do |conn|
      conn.exec_params("INSERT INTO articles (title, url, description) VALUES ($1, $2, $3)", [@article_title, @url, @description])
    end
    redirect '/articles'
  else
    @error = "Please fill out all forms."
  end

end
