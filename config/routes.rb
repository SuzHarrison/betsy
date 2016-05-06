Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'
  resources :users do
    resources :orders
    resources :reviews, except: [:show]
    resources :products
  end


  get '/cart' => 'orders#cart'
  post '/cart' => 'order_item#update'

  get '/cart/checkout' => 'orders#checkout'
  patch '/cart/checkout' => 'orders#order_placed' #does patch need to point to checkout page? Or to the destination?
  get '/cart/checkout/review_order/:id' => 'order#review'

  resources :sessions, :only => [:new, :create]
  delete "/logout" => "sessions#destroy"


  resources :products, except: [:new, :create] do
    resources :reviews
  end

  get 'products/by_category/:category' => 'products#by_category'
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
  post '/add_to_cart/:product_id' => 'orders#add_to_cart', :as => 'add_to_cart'
end
