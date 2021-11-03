require 'sinatra/base'

class Message_Board < Sinatra::Base
  get '/test' do
    'test'
  end
end
