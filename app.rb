require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/chitterweb'
require_relative './lib/user'


class Chitter < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Peeps'
  end

  get '/peeps' do
    @user = User.find(session[:user_id])
    @chitterweb = ChitterWeb.all
    erb :'peeps/index'
  end

  get '/peeps/new' do 
    erb :'peeps/new'
  end

  post '/peeps' do 
  ChitterWeb.create(peep: params[:peep])
  redirect '/peeps'
  end

  get '/users/new' do 
    erb :'users/new'
  end

  post '/users' do
    user = User.create(email: params[:email], username: params[:username], password: params[:password] )
    session[:user_id] = user.id
    redirect '/peeps'
  end


  run! if app_file == $0
end