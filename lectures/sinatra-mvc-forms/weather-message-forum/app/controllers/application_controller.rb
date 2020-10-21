require './config/environment'

class ApplicationController < Sinatra::Base

  puts 'loading application controller config'

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
