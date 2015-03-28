Rails.application.routes.draw do
  get 'svg_parsers/test_garbage'
  get 'svg_parsers/download_full_res_quilt'
  get 'svg_parsers/download_full_res_quilt_svg'

  get 'quilts/welcome'
  post 'quilts/welcome'

  get 'quilts/choose_block'
  post 'quilts/choose_block'

  get 'project_templates/choose_project'
  post 'project_templates/choose_project'

  get 'quilts/edit_project'
  post 'quilts/edit_project'

  get 'quilts/preview_project'
  post 'quilts/preview_project'

  get 'quilts/next_steps'
  post 'quilts/next_steps'
  patch 'quilts/next_steps'

  get 'quilts/download_quilt'

  resources 'quilts', :only => [:new, :create]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'svg_parsers/index'

  namespace :api do
    namespace :v1 do
      # resources :designs
      get 'patterns/list'
      get 'patterns/get'

      get 'blocks/get'
      get 'blocks/list'
    end
  end
  # You can have the root of your site routed with "root"
  root 'quilts#welcome'

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
