Rails.application.routes.draw do
  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  mount Refinery::Core::Engine, at: '/refinery'


  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'application#home_1'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/login_view' => 'application#login_view', :as => 'login_view'
  post 'users/login' => 'users#login', :as => 'login'
  post 'users/sign_up' => 'users#sign_up', :as => 'sign_up'
  get '/about_us' => 'application#about_us', :as => 'about_us'
  get '/contact_us' => 'application#contact_us', :as => 'contact_us'
  get '/gallery' => 'application#gallery', :as => 'gallery'
  get '/portfolio' => 'application#portfolio', :as => 'portfolio'
  get '/portfolio_item' => 'application#portfolio_item', :as => 'portfolio_item'
  get '/invoice' => 'application#invoice', :as => 'invoice'
  get '/timeline' => 'application#timeline', :as => 'timeline'
  get '/support' => 'application#support', :as => 'support'
  get '/coming_soon' => 'application#coming_soon', :as => 'coming_soon'
  get '/status' => 'application#status', :as => 'status'
  get '/error_404' => 'application#error_404', :as => 'error_404'
  get '/features' => 'application#features', :as => 'features'
  get '/services' => 'application#services', :as => 'services'
  get '/pricing' => 'application#pricing', :as => 'pricing'
  get '/comparison_tables' => 'application#comparison_tables', :as => 'comparison_tables'
  get '/blog' => 'application#blog', :as => 'blog'
  get '/blog_post' => 'application#blog_post', :as => 'blog_post'
  get '/home_1' => 'application#home_1', :as => 'home_1'
  get '/home_2' => 'application#home_2', :as => 'home_2'
  get '/home_3' => 'application#home_3', :as => 'home_3'

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
