Rails.application.routes.draw do
  root to: "homes#top"
  
  get '/profile', to: 'homes#profile'

  resources :infos, only: [:new,:show,:create,:edit,:update,:index,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
