Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Bathroom resource:
  # CREATE
  get "/bathrooms/new", :controller => "bathrooms", :action => "new"
  post "/create_bathroom", :controller => "bathrooms", :action => "create"

  # READ
  get "/bathrooms", :controller => "bathrooms", :action => "index"
  get "/bathrooms/:id", :controller => "bathrooms", :action => "show"

  # UPDATE
  get "/bathrooms/:id/edit", :controller => "bathrooms", :action => "edit"
  post "/update_bathroom/:id", :controller => "bathrooms", :action => "update"

  # DELETE
  get "/delete_bathroom/:id", :controller => "bathrooms", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
