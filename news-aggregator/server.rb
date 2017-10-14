require "sinatra"
require "sinatra/reloader"
require "csv"
require "pry"
require "erb"
require "uri"
require_relative "models/article"

set :bind, '0.0.0.0'

def array_of_article_objects
  articles = []
  CSV.foreach('articles.csv') do |row|
    articles << Article.new(row[0], row[1], row[2])
  end
  return articles
end

get "/" do
  redirect '/articles'
end

get "/articles" do
  @articles = array_of_article_objects
  erb :articles
end

get '/articles/new' do
  erb :submit_article
end

post '/articles/new' do

  @article_title = params['article_title']
  @description = params['description']
  # http = /http:\/\//
  # https = /https:\/\//
  @url = params['url']
  # unless http.match(url) || https.match(url)
  #   url.prepend('https://')
  # end

  if @article_title != ""
    article = Article.new(@article_title, @url, @description)
    # unless articles
    CSV.open("articles.csv", "a") do |csv|
      csv << [article.article_title, article.url, article.description]
    end
    redirect '/articles'
  # end
  else
    @error = "Please fill out all forms."
  end

end
