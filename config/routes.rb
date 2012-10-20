Picmarks::Application.routes.draw do
  
  get  "/pictures", { :controller => 'Pictures', :action => 'index' }
  post "/pictures", :controller => 'pictures', :action => 'create'

  # Make this route work:
  get "/pictures/new", :controller => 'pictures', :action => 'new'
  
  get "/pictures/:id", { :controller => 'Pictures', :action => 'show' }
  
  
  
end
