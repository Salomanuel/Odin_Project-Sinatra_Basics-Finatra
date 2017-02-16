require 'sinatra'
require 'sinatra/reloader'
require_relative "db/models"

get "/" do
	@fishes = Fish.all
	erb :index, layout: :main
end

get "/:fish_name" do	#/beluga
	@fish = params[:fish_name]
	erb :show, layout: :main
end