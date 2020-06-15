require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @team_information = []

    @name = params["name"]
    @team_information << @name

    @coach = params["coach"]
    @team_information << @coach

    @pg = params["pg"]
    @team_information << @pg

    @sg = params["sg"]
    @team_information << @sg

    @pf = params["pf"]
    @team_information << @pf

    @sf = params["sf"]
    @team_information << @sf

    @c = params["c"]
    @team_information << @c

    erb :team
  end

end
