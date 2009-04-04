ActionController::Routing::Routes.draw do |map|
  map.resources :holes

  map.resources :users

  map.resource :user_session

  map.resource :account, :controller => "users"
  
  map.resources :users do |user|
    user.resources :holes
  end

  map.root :controller => "user_sessions", :action => "new"
end
