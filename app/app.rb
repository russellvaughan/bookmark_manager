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

run! if app_file == $0
end