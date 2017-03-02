require 'sinatra'
require 'sinatra/reloader'

get "/" do
	@title = "index"
	erb :index
end

get "/:fish" do
	@title = "showing #{params[:fish]}"
	erb :show
end