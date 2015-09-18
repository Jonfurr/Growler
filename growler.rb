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
	session[:list] ||= []
	session[:list] << params[:text]
	@list = session[:list]
	erb :new_post
end

# post '/new_post' do
#   session[:message]   # => 'Hello World!'
#   erb :new_post
# end

