require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base
  enable :sessions
  attr_reader :name, :bday

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
    erb :greet
  end

  run! if app_file == $0

end