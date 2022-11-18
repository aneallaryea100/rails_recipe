Rails.application.routes.draw do
  resources :recipes
  resources :recipefoods
  resources :foods
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/public_recipes', to: 'recipes#public'
  get '/shopping_list', to: 'shopping_list#shopping_list'

  # Defines the root path route ("/")
   root "welcome#index"
end
