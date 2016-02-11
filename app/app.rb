ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
  redirect '/links'
  end 


  get '/links' do
    @links = Link.all
    erb :index
  end

  get '/links/new' do
    erb :form

  end

  post '/links' do
    p params
    Link.create(url: params[:URL], title: params[:title])
    redirect '/links'
  end


  
  run! if app_file == $0
end
