# give our App class the ability to handle requests and responses by inheriting from Sinatra
class App < Sinatra::Base

    # define all of our get and post routes
    # Sinatra gives us 2 methods: `get` and `post`, which each take a block specifying the response to the request
    get '/welcome' do # welcome route
        "welcome to our site"
    end

    get '/' do # root route
        "hello!"
    end

end