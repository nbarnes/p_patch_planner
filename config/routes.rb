PPatchPlanner::Application.routes.draw do

  resources :news_posts

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'

end