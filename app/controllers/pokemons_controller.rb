class PokemonsController < ApplicationController

    get '/pokemons' do #index
        @pokemons = Pokemon.all
        erb :'pokemons/index'
    end

    get '/pokemons/new' do 
        erb :"/pokemons/new"
    end
    
    get '/pokemons/:id' do
        @pokemon = Pokemon.find_by_id(params["id"])
        
        if @pokemon
            erb :'pokemons/show'
        else
            redirect "/pokemons"
        end

    end

    post '/pokemons' do 
        pokemon = Pokemon.new(name: params["name"], evolved: params["evolved"], power: params["power"])

        if pokemon.save
            redirect "/pokemons/#{pokemon.id}"
        else
            redirect "/pokemons/new"
        end
    end


end


# ReST pokemons
#GET        /pokemons          index - view all of the pokemons
#GET        /pokemons/:id      show - view one of the pokemon
#GET        /pokemons/:id/edit edit - access the form to update a pokemon
#GET        /pokemons/new      new - access the form to create a new pokemon
#POST       /pokemons          create - create  a new pokemon   
#PUT/PATCH  /pokemons/:id      update - updates an existing pokemons info
#DELETE     /pokemons/:id      destroy - deletes a pokemon from the db