# require "factory_girl"
require "rack/test"
require "rspec"

ENV["RACK_ENV"] = "test"

require File.expand_path "../../app.rb", __FILE__
# Dir[File.join(File.dirname(__FILE__), "factories", "*.rb")].sort.each { |f| require f }

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |config|
  config.include RSpecMixin
  # config.include FactoryGirl::Syntax::Methods
end
