Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :books
  resources :users
  get 'home/about', to: 'home#about'
  get 'about', to: 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
