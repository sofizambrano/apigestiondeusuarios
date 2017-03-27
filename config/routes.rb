Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/usuario/:id', to: 'usuarios#show'
  post '/usuario/:id', to: 'usuarios#update'
  delete '/usuario/:id', to: 'usuarios#destroy'
  get '/usuario', to: 'usuarios#index'
  put '/usuario', to: 'usuarios#create'
end
