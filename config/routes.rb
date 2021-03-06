MobileShop::Application.routes.draw do
 namespace :admin do
    root :to => 'orders#index'
    devise_for :users
    match 'edit/' => 'orders#edit'
    match 'edit/product/:id' => 'orders#productedit', as: :productedit
  end
  root :to => "shop#index"
  match 'product/:id' => "shop#product"
  match 'category/:id' => "shop#category"
  match 'add/:id' => 'orders#create'
  match 'card/' => 'card#index'
  match 'search/' => 'search#index' 
  match 'spa/' => 'spa#index' 
  match 'show_categories' => 'shop#show_categories'
  match 'show_products' => 'shop#show_products'
  match 'show_user' => 'shop#show_user'
  match 'show_product/:id' => 'shop#show_product'
  match 'show_category/:id' => 'shop#show_category'

  resources :buyers
  resources :products
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
