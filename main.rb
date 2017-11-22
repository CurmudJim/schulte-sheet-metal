require 'sinatra'
require 'sinatra/reloader' if development?


get '/' do
  erb :home
end

get '/contact' do
  erb :contact
end

not_found do
  erb :not_found
end
