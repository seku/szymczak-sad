require 'rubygems'
require 'sinatra/base'
require 'haml'

class SinatraBootstrap < Sinatra::Base
  get '/' do
    haml :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
