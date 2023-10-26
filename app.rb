require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

get "/" do
  # Récupérer les restaurants dans la base de donnée
  @restaurants = Restaurant.all
  # Afficher les restaurants
  erb :index
end

get "/restaurants/:id" do
  # Récupérer l'id via les params => information qui vient de l'url
  id = params[:id].to_i
  # Récuperer le restaurant via l'id récupéré des params
  @restaurant = Restaurant.find(id)
  # Affiche le détail du restaurant avec la vue show
  erb :show
end

post "/restaurants" do
  # Récupérer le nom et l'adresse rentrés depuis le formulaire
  # Utilisation des params => information venant d'un formualire
  name = params[:name]
  address = params[:address]
  # Instancier un nouveau restaurant avec ces informations
  restaurant = Restaurant.new(name: name, address: address)
  # Sauvegarder le restaurant dans le base de donnée
  restaurant.save
  # Rediriger vers la page d'accueil (à la racine '/')
  redirect "/"
end
