Rails.application.routes.draw do
  get 'releases/new'
  get 'releases/index'
  get 'releases/edit'
  get 'releases/show'
  root to: "homes#top"

  get '/profile', to: 'homes#profile'

   resources :profiles, only: [:new,:show,:create,:edit,:update,:destroy]

  resources :infos, only: [:new,:show,:create,:edit,:update,:index,:destroy]

  resources :releases, only: [:new,:create,:index,:show,:edit,:update,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
