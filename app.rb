require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/chitterweb'


class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Peeps'
  end

  get '/peeps' do
    @chitterweb = ChitterWeb.all
    erb :'peeps/index'
  end

  run! if app_file == $0
end