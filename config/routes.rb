Rails.application.routes.draw do
  resources :project_participants
  resources :projects
  resources :research_groups
  resources :activities
  resources :financial_institutions
  resources :nature_financings
  resources :categories
  resources :specialities
  resources :sub_areas
  resources :areas
  resources :great_areas
  resources :departments
  get 'welcome/index'
  root 'welcome#index'
  
  resources :institutes
  resources :people
  
  get 'projects/:id/add' => 'projects#add', as: :add
  
  post 'projects/:id/addparticipator' => 'projects#add_participator', as: :addparticipator
  delete 'projects/:id/:id_participant/removeparticipator' => 'projects#remove_participator', as: :removeparticipator
  
  post 'projects/:id/addactivity' => "projects#add_activity", as: :addactivity
  delete 'projects/:id/:id_activity/removeactivity' => 'projects#remove_activity', as: :removeactivity 
  
  #resources :users
  get 'users/new_person' => 'users#new_person', as: :user_new_person
  post 'users/create_person' => 'users#create_person', as: :user_create_person
  get 'users/new_institute' => 'users#new_institute', as: :user_new_institute
  post 'users/create_institute' => 'users#create_institute', as: :user_create_institute
  get 'signup'  => 'users#new'
  get 'login'  => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

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
