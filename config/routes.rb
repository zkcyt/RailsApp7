Rails.application.routes.draw do

  resources :likes, only: [:create, :destroy]

  # post "likes/:post_id/create" => "likes#create"
  # post "likes/:post_id/destroy" => "likes#destroy"

  resources :users

  resources :posts do
    resources :likes, only: [:create, :destroy]
  end


  get 'ajax/index'
  get 'ajax/data'
  post 'ajax/data'
  # get 'ajax', to: "ajax#index"

  resources :board_messages
  resources :board_users
  resources :data_pages
  # get 'data_pages/index'
  # get 'data_pages', to: "data_pages#index"

  devise_for :accounts
  # root 'home#index'
  # root 'helo#index'

  get 'holo/index'
  get 'helo', to: "helo#index"
  get 'helo/login_check'

  get 'questionary_items/new/:id', to: 'questionary_items#new'
  get 'questionary_choices/new/:id', to: 'questionary_choices#new'
  post 'questionaries/:id', to: 'questionaries#sendform'
  get 'questionary_results/calc/:id', to: 'questionary_results#calc'
  resources :questionary_results
  resources :questionary_choices
  resources :questionary_items
  resources :questionaries


  resources :answers
  resources :questions


  get 'blogs/index'
  get 'blogs', to: "blogs#index"
  get 'blogs/:page', to: "blogs#index"

  get 'blogs/genre/:id', to: "blogs#genre"
  get 'blogs/genre/:id/:page', to: "blogs#genre"

  get 'blogs/show/:id', to: "blogs#show"

  get 'blogposts/index'
  get 'blogposts', to: 'blogposts#index'
  get 'blogposts/add'
  post 'blogposts/add'
  get 'blogposts/:id', to: 'blogposts#edit'
  patch 'blogposts/:id', to: 'blogposts#edit'
  get 'blogposts/delete'
  get 'blogposts/delete/:id', to: 'blogposts#delete'
  post 'blogposts/delete', to: 'blogposts#delete'
  post 'blogposts/delete/:id', to: 'blogposts#delete'

  get 'bloggenres/index'
  get 'bloggenres', to: 'bloggenres#index'
  get 'bloggenres/add'
  post 'bloggenres/add'
  get 'bloggenres/:id', to: 'bloggenres#edit'
  patch 'bloggenres/:id', to: 'bloggenres#edit'

  get 'blogconfigs/index'
  get 'blogconfigs', to: 'blogconfigs#index'
  get 'blogconfigs/edit'
  patch 'blogconfigs/edit'

  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/add'
  post 'people/add', to: 'people#create'
  get 'people/:id', to: 'people#show'
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'
  get 'people/delete/:id', to: 'people#delete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
