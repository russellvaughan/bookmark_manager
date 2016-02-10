ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative 'models/link'
require 'data_mapper'
require 'rubygems'
require 'tilt/erb'




class BookmarkManager < Sinatra::Base

	get '/' do
		redirect('/links')
	end
  	
  	get '/links' do
    	@links = Link.all
    	erb :'links/index'
  	end

  	get '/links/new' do 
  		erb :'links/new'
  	end

  	post '/links' do
  		Link.create(url: params[:url], title: params[:title])
  		redirect('/links')
	end
  
  	run! if app_file == $0
end