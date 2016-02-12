ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require './app/models/link'
require './app/data_mapper_setup.rb'

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
    link = Link.new(url: params[:URL], 
                  title: params[:title])
    tag = Tag.create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end


  
  run! if app_file == $0
end
