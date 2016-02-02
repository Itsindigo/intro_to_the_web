require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Maaaaagic"
end

get '/meh' do
  "Fuck this shit"
end

get '/random-cat' do
  @sample = %w(Amigo Oscar Viking Giorgio).sample
  erb :index
end


get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end
