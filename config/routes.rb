Rails.application.routes.draw do
  get  '/dashboard', to: 'dashboard#show'
  root 'home#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
