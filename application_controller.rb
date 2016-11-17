require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do
    user_name=params[:person]
    @capname=capitalize(user_name)
    erb :results
  end


end