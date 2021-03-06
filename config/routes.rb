Bookup::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  resources :books,:except => [:index, :destroy]
  resources :users,:except => [:index, :destroy]
  resources :sessions, :only => [:new, :create, :destroy]

  root "users#splash"

  get 'login' => 'sessions#login', via: 'get'

  get 'signup' => 'users#signup', via: 'get'

  get 'signup' => 'users#signup', via: 'get'

  get 'logout' => 'sessions#logout', via: 'destroy'

  get 'profile' => 'users#profile'

  get 'sessions' => 'users#profile'

  post 'search' => 'books#search', via: 'get'

  get 'search' => 'books#search', via: 'get'

  post '/books/like_book' => 'books#like_book'

  put 'likebook' => 'users#likebook'

  put 'dislikebook' => 'users#dislikebook'



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
