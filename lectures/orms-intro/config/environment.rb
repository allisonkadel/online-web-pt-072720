# This is our environment file. It loads our gems, establishes a connection to the database
    # which is saved in the DB hash, and it requires all of our code.

require 'sqlite3'
require 'pry'


DB = {:conn => SQLite3::Database.new('db/cats.db')}
# We can pass in a relative or absolute path to the initialize method.
# If we use a relative path, the database will be created in the path relative to the Rakefile,
    # which is the file we are running our program from.
# Supplying 'db/cats.db' as a path will tell the Database constructor to look inside
    # the same directory as our Rakefile (our root directory) for a directory named 'db'.
    # If the 'db' directory isn't found, we will get a CantOpenException.


require_relative '../lib/cat'
