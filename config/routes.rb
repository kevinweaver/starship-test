Rails.application.routes.draw do
  devise_for :users
  root 'personnels#index'
  get '/starships', to: redirect('/personnels')

  resources :starships
  resources :personnels
  resources :starship_rosters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
