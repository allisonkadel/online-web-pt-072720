require './config/environment'

class ApplicationController < Sinatra::Base

<<<<<<< HEAD
=======
  puts 'loading application controller config'

>>>>>>> 3a14f049b22fbae521e08c96b754fefa45fa3067
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
