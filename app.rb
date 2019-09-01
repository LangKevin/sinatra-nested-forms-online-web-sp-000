require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
<<<<<<< HEAD
      erb :root
    end
    get '/new' do
      erb :'pirates/new'
    end
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
=======
       erb :root
    end
    get '/new' do
       erb :'pirates/new'
    end
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|

        Ship.new(details)
      end
     
      @ships = Ship.all
      
      erb :'pirates/show'
      # binding.pry
>>>>>>> e17a3cd19f0a01cae31c68a1efe07a077438c990
    end
  end
end
