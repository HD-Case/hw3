Rails.application.routes.draw do
  get 'entries/new'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" })

  resources "places"
  #rails generate controller Places index show new create
  resources "entries"
  #rails generate controller Entries new create
  # don't need 'index' because we handle in places/show
end
