Picmarks::Application.routes.draw do
  
  get  "/pictures" => 'Pictures#index', :as => 'pictures'
  post "/pictures", :controller => 'Pictures', :action => 'create'
  get "/pictures/new", :controller => 'Pictures', :action => 'new', :as => 'new_picture'
  get "/pictures/:id", :controller => 'Pictures', :action => 'show', :as => 'picture'
  delete "/pictures/:id" => 'Pictures#destroy', :as => 'delete_picture'
  
end
