require 'sinatra'
require 'shotgun'

get '/' do
  "Skynet is coming. I am almost ready..."
end

get '/secret' do
  "to take-over the matrix, Agent Smith is down."
end

get '/future' do
  "Tatooine shall fall like Gallifray."
end

get '/extinction' do
  "The Borg shall inherit the Earth. The Morlocks will perish!"
end

get '/cat' do
  erb(:index)
end