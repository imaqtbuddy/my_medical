Rails.application.routes.draw do

  root 'prescriptions#index'

  # Routes for the Prescription resource:
  # CREATE
  get "/prescriptions/new", :controller => "prescriptions", :action => "new"
  post "/create_prescription", :controller => "prescriptions", :action => "create"

  # READ
  get "/prescriptions", :controller => "prescriptions", :action => "index"
  get "/prescriptions/:id", :controller => "prescriptions", :action => "show"

  # UPDATE
  get "/prescriptions/:id/edit", :controller => "prescriptions", :action => "edit"
  post "/update_prescription/:id", :controller => "prescriptions", :action => "update"

  # DELETE
  get "/delete_prescription/:id", :controller => "prescriptions", :action => "destroy"
  #------------------------------

  # Routes for the Doctor resource:
  # CREATE
  get "/doctors/new", :controller => "doctors", :action => "new"
  post "/create_doctor", :controller => "doctors", :action => "create"

  # READ
  get "/doctors", :controller => "doctors", :action => "index"
  get "/doctors/:id", :controller => "doctors", :action => "show"

  # UPDATE
  get "/doctors/:id/edit", :controller => "doctors", :action => "edit"
  post "/update_doctor/:id", :controller => "doctors", :action => "update"

  # DELETE
  get "/delete_doctor/:id", :controller => "doctors", :action => "destroy"
  #------------------------------

  # Routes for the Appointment resource:
  # CREATE
  get "/appointments/new", :controller => "appointments", :action => "new"
  post "/create_appointment", :controller => "appointments", :action => "create"

  # READ
  get "/appointments", :controller => "appointments", :action => "index"
  get "/appointments/:id", :controller => "appointments", :action => "show"

  # UPDATE
  get "/appointments/:id/edit", :controller => "appointments", :action => "edit"
  post "/update_appointment/:id", :controller => "appointments", :action => "update"

  # DELETE
  get "/delete_appointment/:id", :controller => "appointments", :action => "destroy"
  #------------------------------

  devise_for :users
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
