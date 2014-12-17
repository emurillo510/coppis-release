Rails.application.routes.draw do

  get 'errors/file_not_found'

  get 'errors/unprocessable'

  get 'errors/internal_server_error'

  resources :brands , :except => [:index]

  resources :products

 
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", :registrations => "registrations"}
  resources :posts do
    resources :comments
    member { post :vote } #Active Record Reputation System  
  end


  # Application Routes
  root to: "home#index"
  get "queue" => "pages#queue"
  get "recent" => "home#recent"
  get "admin" => "posts#admin_page"
  get "admin/brands" => "brands#admin_page"
  get "guidelines" => "pages#guidelines"
  get "privacypolicy" => "pages#privacypolicy"
  get "tos" => "pages#tos"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
  get "register" => "pages#register"

  # Error Handling Routes
  # match method is used to match a URL to one or more routes.
  # It is more flexible than get method because you can configure it to be triggered in conjunction
  # with any matching route and HTTP method as opposed to for instance just a route matching the get method.
  match '/404', to: 'errors#file_not_found', via: :all
  match '/422', to: 'errors#unprocessable', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
  
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
