require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :home
end

get '/contact' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  erb :contact
end

post '/contact' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
end

not_found do
  erb :not_found
end
