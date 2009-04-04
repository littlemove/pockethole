ActionController::Routing::Routes.draw do |map|
  map.resources :users

  map.resource :user_session
  
  map.root :controller => "user_session", :action => "new"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
