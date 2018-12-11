require 'sinatra/base'

class App < Sinatra::Base


  get '/newteam' do
    erb :newteam
  end #gets newteam page with form

  post '/newteam' do
    #this takes form input
  @name = params["name"]
  @coach = params["coach"]
  @pg = params["pg"]
  @sg = params["sg"]
  @pf = params["pf"]
  @sf = params["sf"]
  @c = params["c"]
  erb :team #this passes instances to team
  end


end
