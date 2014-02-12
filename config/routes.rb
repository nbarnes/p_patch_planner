PPatchPlanner::Application.routes.draw do

  resources :news_posts, :users

  root  'static_pages#home'
  match "/auth/twitter/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", :as => :signout, via: 'delete'

end
