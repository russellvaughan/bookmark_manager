require 'sinatra/base'
require './app/models/link'

class Bookmark_Manager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/links'	do 
    @links = Link.all
  	erb :links
  end

  post '/links' do 
  Link.create(url: params[:url] , title: params[:title])
  redirect to ('/links')
  end 

  get '/links/new' do 
  	erb :links_new
  end

run! if app_file == $0
end