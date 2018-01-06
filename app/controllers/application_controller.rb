require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    binding.pry
    @team = Team.new
    @team.name = params[:team][:name]
    @team.name = params[:team][:motto]

    params[:team][:member].each do |superhero|
      new_superhero = SuperHero.new
      new_superhero.name = superhero[:name]
      new_superhero.power = superhero[:power]
      new_superhero.bio = superhero[:bio]
    end
    @super_heroes = SuperHero.all

    erb :team
  end

end
