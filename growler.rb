require 'sinatra'
require 'sinatra/reloader'

enable :sessions


get '/' do
  	# session[:message] = 'Hello World!'
  	# redirect to('/new_post')
  	session["text"]
  	erb :index
end

get '/new_post' do
  # session[:message]   # => 'Hello World!'
  	erb :new_post
end

post '/new_post' do
	session[:text] = params[:text]
	@text = session[:text]
	erb :new_post
end

# post '/new_post' do
#   session[:message]   # => 'Hello World!'
#   erb :new_post
# end

