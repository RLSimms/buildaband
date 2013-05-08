BuildABand2::Application.routes.draw do

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Member resource:
  # CREATE
  get '/members/new', controller: 'members', action: 'new', as: 'new_member'
  post '/members', controller: 'members', action: 'create'

  # READ
  get '/members', controller: 'members', action: 'index', as: 'members'
  get '/members/:id', controller: 'members', action: 'show', as: 'member'

  # UPDATE
  get '/members/:id/edit', controller: 'members', action: 'edit', as: 'edit_member'
  put '/members/:id', controller: 'members', action: 'update'

  # DELETE
  delete '/members/:id', controller: 'members', action: 'destroy'
  #------------------------------

  # Routes for the Musician resource:
  # CREATE
  get '/musicians/new', controller: 'musicians', action: 'new', as: 'new_musician'
  post '/musicians', controller: 'musicians', action: 'create'

  # READ
  get '/musicians', controller: 'musicians', action: 'index', as: 'musicians'
  get '/musicians/:id', controller: 'musicians', action: 'show', as: 'musician'

  # UPDATE
  get '/musicians/:id/edit', controller: 'musicians', action: 'edit', as: 'edit_musician'
  put '/musicians/:id', controller: 'musicians', action: 'update'

  # DELETE
  delete '/musicians/:id', controller: 'musicians', action: 'destroy'
  #------------------------------

  root :to => "Bands#index"

  # Routes for the Album resource:
  # CREATE
  get '/albums/new', controller: 'albums', action: 'new', as: 'new_album'
  post '/albums', controller: 'albums', action: 'create'

  # READ
  get '/albums', controller: 'albums', action: 'index', as: 'albums'
  get '/albums/:id', controller: 'albums', action: 'show', as: 'album'

  # UPDATE
  get '/albums/:id/edit', controller: 'albums', action: 'edit', as: 'edit_album'
  put '/albums/:id', controller: 'albums', action: 'update'

  # DELETE
  delete '/albums/:id', controller: 'albums', action: 'destroy'
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get '/songs/new', controller: 'songs', action: 'new', as: 'new_song'
  post '/songs', controller: 'songs', action: 'create'

  # READ
  get '/songs', controller: 'songs', action: 'index', as: 'songs'
  get '/songs/:id', controller: 'songs', action: 'show', as: 'song'

  # UPDATE
  get '/songs/:id/edit', controller: 'songs', action: 'edit', as: 'edit_song'
  put '/songs/:id', controller: 'songs', action: 'update'

  # DELETE
  delete '/songs/:id', controller: 'songs', action: 'destroy'
  #------------------------------

  # Routes for the Band resource:
  # CREATE

  get '/bands/new', controller: 'bands', action: 'new', as: 'new_band'
  post '/bands', controller: 'bands', action: 'create'

  # READ
  get '/bands', controller: 'bands', action: 'index', as: 'bands'
  get '/bands/:id', controller: 'bands', action: 'show', as: 'band'

  # UPDATE
  get '/bands/:id/edit', controller: 'bands', action: 'edit', as: 'edit_band'
  put '/bands/:id', controller: 'bands', action: 'update'

  # DELETE
  delete '/bands/:id', controller: 'bands', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
