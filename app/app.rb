ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
#require_relative 'models/link'
require 'data_mapper'
require 'rubygems'
require 'tilt/erb'
require_relative 'data_mapper_setup.rb'
require_relative 'models/user'


class BookmarkManager < Sinatra::Base

  enable :sessions

	  get '/' do
		  redirect('/')
	  end

    get '/user/new' do 
      erb :'links/signup'
    end

    post '/users' do 
      @user = User.create(name: params[:name], mail: params[:mail], password: params[:password]) 
      session[:idall] = @user.name
      redirect('/links')
    end
  	
  	get '/links' do
      @current_user = session[:idall]
    	@links = Link.all
    	erb :'links/index'
  	end

  	get '/links/new' do 
  		erb :'links/new'
  	end

  	post '/links' do
  		link = Link.new(url: params[:url], title: params[:title])
      params[:tags].split.each do |tag|
      tag = Tag.create(name: tag)
      link.tags << tag 
    end
      link.save
  		redirect('/links')
    end

    get '/tags/:name' do 
      tag = Tag.first(name: params[:name])
      @links = tag ? tag.links : []
      erb :'links/index'
    end
  
  	run! if app_file == $0
end