require 'sinatra'
require 'sinatra/reloader'

get "/" do
	@title = "index"
	erb :index
end