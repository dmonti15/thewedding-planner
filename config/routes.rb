Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  resources :posts
  resources :photos

#  resources :users
#  generates:
#   get "/users" -- index on your controller
#   get "/users/:id" -- show on your controller
#   get "/users/new" -- new method on your controller
#   post "/users" -- create on your controller
#   get "/users/:id/edit" -- edit method on your controller
#   put "/users/:id" -- update on your controller
#   patch "/users/:id" -- update on your controller
#   delete "/users/:id" -- destroy on your controller

  root 'pages#index'
  get '/about' => 'pages#about'
  get '/blog' => 'pages#blog'
  get '/services' => 'pages#services'
  get '/basic' => 'pages#basic'
  get '/pro' => 'pages#pro'
  get '/premium' => 'pages#premium'
  get '/contact' => 'pages#contact'

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
