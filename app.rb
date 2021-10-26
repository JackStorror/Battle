require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get '/' do
  "Testing infrastructure working!"
end

get '/start' do
  erb(:index)
end 

post '/names' do 
"#{params[:player1]} #{params[:player2]}"
end 

run! if app_file == $0
end