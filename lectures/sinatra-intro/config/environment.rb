# require all the gems in our Gemfile
require 'bundler'
Bundler.require

# setup the database connection

# require the application code
require_relative '../app'

# we run `rackup` to start our server. When we don't explicitly specify a filename, Rack will automatically look for a `config,ru` file to run first.