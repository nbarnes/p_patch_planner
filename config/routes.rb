PPatchPlanner::Application.routes.draw do

  resources :news_posts

  root  'static_pages#home'
  match '/signup',  to: 'users#new', via: 'get'
  match "/auth/twitter/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: 'delete'

end
