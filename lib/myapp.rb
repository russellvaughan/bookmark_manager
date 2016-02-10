require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base
  get '/' do
    erb :index
  end
end
