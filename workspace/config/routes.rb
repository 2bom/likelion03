Rails.application.routes.draw do
  root :to => "huge#read"
  
  get ':controller(/:action(/:id(.:format)))'
  post ':controller(/:action(/:id(.:format)))'
end
