Nycjobhub::Application.routes.draw do
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :resumes, only: [:create, :edit, :destroy]
  resources :educations, only: [:index, :create, :edit, :destroy]
  resources :experiences, only: [:index, :create, :edit, :destroy]
  
  
  root :to => 'pages#home'
  
  match '/signup',  to: 'users#new'
  
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy'
  
  match '/dashboard',  to: 'pages#dashboard'
  match '/search',  to: 'pages#search'
  match '/detail',  to: 'pages#show_listing_description'
  match '/bookmarkthis',  to: 'pages#bookmark_this'
  match '/visitpage',  to: 'pages#visit_page'
  match '/yelp',  to: 'pages#yelp'
  
  match '/add',  to: 'resumes#create'
  match '/edit',  to: 'resumes#edit'
  match '/educations',  to: 'educations#index'
  match '/addeducation',  to: 'educations#create'
  match '/experiences',  to: 'experiences#index'
  #match '/experience',  to: 'experiences#new'
  #resources :tasks
  #resources :skills
  #match '/skill',  to: 'skills#new'
  
  
  
  
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
