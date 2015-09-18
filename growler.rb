require 'sinatra'
require 'sinatra/reloader'

before do
	
end

enable :sessions


#Routes
get '/' do

	erb :index
end