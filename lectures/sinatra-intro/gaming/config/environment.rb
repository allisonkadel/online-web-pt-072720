# require all the gems in our Gemfile
require 'bundler'
Bundler.require

# setup the database connection
ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "db/gaming.sqlite"
)

# require the application code
require_relative '../app'
# require_relative '../app/controllers/games_controller'
require_all 'app'

# we run `rackup` to start our server. When we don't explicitly specify a filename, Rack will automatically look for a `config,ru` file to run first.