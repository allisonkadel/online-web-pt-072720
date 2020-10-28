require_relative 'config/environment'

use GamesController
use GamersController
run App # this method is given to us by Rack and takes as an argument our class defined in app.rb