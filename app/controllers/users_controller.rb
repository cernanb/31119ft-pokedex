class UsersController < ApplicationController

    get '/users' do #index
        @users = User.all
        erb :'users/index'
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