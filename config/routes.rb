Rails.application.routes.draw do
  resources :users
  resources :recipes
  resources :categories
  get 'top/logout'
  post 'top/login_form'
#  get 'top/main'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.

  # Defines the root path route ("/")
  root 'top#main'
  
  get 'home/index' 

  get 'search', to: 'recipes#search' # 文字検索
  get 'image_search', to: 'recipes#image_search' # 画像類似検索
  get 'category_search',to: 'recipes#category_search'
end
