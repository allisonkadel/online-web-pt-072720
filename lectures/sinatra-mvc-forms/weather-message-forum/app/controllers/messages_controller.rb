class MessagesController < ApplicationController

    # New
    get '/messages/new' do
        erb :'messages/new' 
    end


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

end