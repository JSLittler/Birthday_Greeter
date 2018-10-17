require 'sinatra/base'
require 'date'
require './lib/model'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:enter_name]
    session[:bday] = params[:bday]
    redirect '/greet'
  end

  get '/greet' do
    @name = session[:name]
    @bday = session[:bday]
    @days = split_date(@bday)
    @days == 0 ? (@message = "Happy Birthday") : (@message = "It is #{@days} days, to your birthday")
    erb :greet
  end

  run! if app_file == $0

end