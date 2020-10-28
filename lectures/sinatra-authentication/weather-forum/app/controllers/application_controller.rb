require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, SecureRandom.hex(64)
  end

  get "/" do
    erb :welcome
  end

  post "/login" do
    # see if the user exists in the db
    user = User.find_by(username: params[:username])
    # if the user exists, log user in using the session hash
    if user
      session[:id] = user.id
      redirect "/messages"
    else
      redirect "/"
    end
  end

end