require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    post '/pirates' do
      @p = Pirate.new(params[:pirate]["name"], params[:pirate]["weight"], params[:pirate]["height"])
      params[:pirate][:ships].each do |ship| 
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

    get '/new' do
      erb :"pirates/new"
    end
 

  end

end
