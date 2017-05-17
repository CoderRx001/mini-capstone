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
end
