require 'sinatra'
require 'sinatra/reloader'
require_relative 'db/models'

get "/" do
	@fishes = Fish.all
	erb :index, layout: :main
end

get "/wonbat" do
	"this is a wombat"
end

# /beluga
get "/:fish_name" do
	@fish = params[:fish_name]
	erb :show, layout: :main 
end