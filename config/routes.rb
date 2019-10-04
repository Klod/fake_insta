Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd'
  root "posts#index"
  resources :posts
  get "/profile/:id", to: "users#profile"
  # resources :users, only: [:show]  
  # if using show.html.erb inside users folder
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
