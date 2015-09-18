require 'sinatra'
require 'sinatra/reloader'

enable :sessions


get '/' do
  	# session[:message] = 'Hello World!'
  	# redirect to('/new_post')
  	erb :index
end

get '/new_post' do
  # session[:message]   # => 'Hello World!'
  	erb :new_post
end

post '/new_post' do
	erb :new_post
end

# post '/new_post' do
#   session[:message]   # => 'Hello World!'
#   erb :new_post
# end

