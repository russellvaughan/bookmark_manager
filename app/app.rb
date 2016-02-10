require 'sinatra/base'
require_relative 'models/link'
#require 'tilt/erb'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :'links/index'
  end
  #run! if app_file == $0
end