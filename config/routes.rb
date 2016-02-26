Rails.application.routes.draw do
  root :to => "heart#read"
  
  get ':controller(/:action(/:id(.:format)))'
  post ':controller(/:action(/:id(.:format)))'
end
