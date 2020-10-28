<<<<<<< HEAD
class MessagesController < ApplicationController

    # New
=======
class MessagesController < Sinatra::Base

>>>>>>> 3a14f049b22fbae521e08c96b754fefa45fa3067
    get '/messages/new' do
        erb :'messages/new' # for thursday: why are we getting a path error when we try to render this view?
    end

<<<<<<< HEAD
    # Create
    post '/messages' do
        Message.create(params)
        redirect '/messages'
        # erb :'messages/show'
    end

    # Index
    get '/messages' do
        @messages = Message.all
        erb :'messages/index'
    end

=======
>>>>>>> 3a14f049b22fbae521e08c96b754fefa45fa3067
end