require 'sinatra/base'

class Message_Board < Sinatra::Base
  get '/test' do
    erb :test
  end

  get '/' do
    erb :index
  end

  get '/posts' do
    erb :posts
  end

  post '/posts' do
    @name = params[:name]
    @password = params[:password]

    erb :posts
  end
end
