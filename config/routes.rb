Picmarks::Application.routes.draw do
  
  get  "/pictures" => 'Pictures#index', :as => 'pictures'

  get "/pictures/new", :controller => 'Pictures', :action => 'new', :as => 'new_picture'
  post "/pictures", :controller => 'Pictures', :action => 'create'

  get "/pictures/:id", :controller => 'Pictures', :action => 'show', :as => 'picture'

  delete "/pictures/:id" => 'Pictures#destroy'

  get 'pictures/:id/edit' => 'Pictures#edit', :as => 'edit_picture'
  put "/pictures/:id" => 'pictures#update'
  
end
