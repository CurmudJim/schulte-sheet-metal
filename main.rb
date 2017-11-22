require 'sinatra'
require 'sinatra/reloader'
# require 'pony'

# def send_message
#   Pony.mail({
#     :from => params[:name] + "<" + params[:email] + ">",
#     :to => 'jgarvey86@gmail.com',
#     :subject => params[:name] + " has contacted you",
#     :body => params[:message],
#     # :port => '587',
#     :via => :smtp,
#     :via_options => {
#       :address => 'smtp.gmail.com',
#       :port => '587',
#       :enable_starttls_auto => true,
#       :user_name => 'jgarvey86',
#       :password => 'cjohnson71$',
#       :authentication => :plain,
#       :domain => 'localhost.localdomain'
#       }
#     })
#   end


get '/' do
  erb :home
end

get '/contact' do
  erb :contact
end

# post '/contact' do
#   send_message
#   # flash[:notice] = "Thank you for contacting us. We'll be in touch soon."
#   # redirect to('/')
# end

not_found do
  erb :not_found
end
