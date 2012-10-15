Picmarks::Application.routes.draw do
  
  get "/pictures", { :controller => 'Pictures', :action => 'index' }
  
  get "/pictures/:giraffe", { :controller => 'Pictures', :action => 'show' }
  
  
end
