Restaurant::Application.routes.draw do

  root :to => "sessions#new"


#new user registration
  get '/register' => 'users#newuser', as: :register
  post '/users' => 'users#create'

# user log in
  get '/signin' => 'sessions#new', as: :sessions
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: :signout

  post '/mainpage' => 'places#search', as: :places
  get '/mainpage' => 'places#index', as: :home



#adding a favourite place
  post '/myfavourite' => 'favourites#create', as: :favourites
  get '/favouritelist' => 'favourites#index', as: :list
  delete '/favouritelist/:id' => 'favourites#destroy', as: :remove

#adding a wait time to a place
  #post '/waittime' => 'places#create', as: :wait

  post '/nearby' => 'places#nearby', as: :nearby
  get '/nearby' => 'places#nearby'

  post '/wait_time_chart' => 'wait_times#new', as: :chart
  get '/wait_time_chart' => 'wait_times#new' 
  post '/wait_times_saved' => 'wait_times#create', as: :create

  post '/userstat/new' => 'userstats#create', as: :send










  






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
