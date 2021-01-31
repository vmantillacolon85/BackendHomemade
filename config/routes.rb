Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# ======== Recipes =============
  get "/recipes", to: "recipes#index"
  get '/recipes/:id', to: 'recipes#show'
  post '/recipes', to: 'recipes#create'
  delete '/recipes/:id', to: 'recipes#delete'
  put '/recipes/:id', to: 'recipes#update'

# ======= Drinks ===============
  get '/drinks', to: 'drinks#index'
  get '/drinks/:id', to: 'drinks#show'
  post '/drinks', to: 'drinks#create'
  delete '/drinks/:id', to: 'drinks#delete'
  put '/drinks/:id', to: 'drinks#update'  

end
