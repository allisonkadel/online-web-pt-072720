class MessagesController < Sinatra::Base

    get '/messages/new' do
        erb :'messages/new' # for thursday: why are we getting a path error when we try to render this view?
    end

end