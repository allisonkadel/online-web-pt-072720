require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, SecureRandom.hex(64) # generate a random, 64-byte hexadecimal string (Sinatra docs recommend at least 64 bytes in length) to "sign" (authenticate) the session data in the cookie that is sent between client (browser) and server
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