Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }  resources :songs
  resources :albums
  resources :categories
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
