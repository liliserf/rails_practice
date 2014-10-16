Rails.application.routes.draw do
  # root 'users#index'

  get "/users", to: "users#index"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  delete "/users/:id", to: "users#destroy"
  get "/cohorts", to: "cohorts#index"
  post "/cohorts", to: "cohorts#create"
  get "cohorts/:id", to: "cohorts#show"
  get "cohorts/:id", to: "cohorts#edit"
  put "cohorts/:id", to: "cohorts#update"
  post "cohorts/:id/members", to: "memberships#create" 
  delete "cohorts/:id/members/:id", to: "memberships#destroy"


  # How to make PS the index and then show all 
  # for users and cohorts on their own pages

  # get "/users", to: "users#index"
  # post "/users", to: "users#create"
  # get "/users/:id", to: "users#show"  
  # post "/users/:id/bikes", to: "bikes#create"
  # delete "/users/:id/bikes/:id", to: "bikes#destroy"
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
