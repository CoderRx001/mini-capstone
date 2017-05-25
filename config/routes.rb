Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get '/chi_pop_url' => 'products#popcorn_page'

    get '/' => 'products#index'

    get '/products' => 'products#index' #url is always PLURAL
    
    get '/products/new' => 'products#new' #these 2 are pairs
    post '/products' => 'products#create'

    get '/products/:id' => 'products#show'

    get '/products/:id/edit' => 'products#edit' #these 2 are pairs
    patch '/products/:id' => 'products#update'

    get '/random' => 'products#random'

    get'/signup' => 'users#new'
    post '/users' => 'users#create'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    post '/orders' => 'orders#create' 
    get '/orders/:id' => 'orders#show'

    get '/carted_products' => 'carted_popcorns#index'
    post '/carted_products' => 'carted_popcorns#create'
    delete 'carted_products/:id' => 'carted_products#destroy'
    
end
