Rails.application.routes.draw do
  get '/characters', to: 'characters#index', as: 'characters'

  get '/characters/new', to: 'characters#new', as: 'new_character'
  post '/characters', to: 'characters#create'

  get '/characters/:id', to: 'characters#show', as: 'character'

  get '/characters/:id/edit', to: 'characters#edit', as: 'edit_character'
  patch '/characters/:id', to: 'characters#update'

  delete '/characters/:id', to: 'characters#destroy'
end
