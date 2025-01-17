Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/supermarkets/:id', to: 'supermarkets#show'

  get '/items', to: 'items#index'

  get '/customers/:id', to: 'customers#show'

  post 'customers/:id/items', to: 'customers/items#create'
end
