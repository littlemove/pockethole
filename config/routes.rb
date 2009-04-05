ActionController::Routing::Routes.draw do |map|
  map.resources :holes

  map.resources :users

  map.resource :user_session

  map.resource :home, :controller => "users", :action => :show
  
  map.resources :users do |user|
    user.resources :month_outcomes
  end

  map.root :controller => "user_sessions", :action => "new"
end
