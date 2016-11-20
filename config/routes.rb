# == Route Map
#
#                   Prefix Verb     URI Pattern                            Controller#Action
#                    goals GET      /goals(.:format)                       goals#index
#                          POST     /goals(.:format)                       goals#create
#                 new_goal GET      /goals/new(.:format)                   goals#new
#                edit_goal GET      /goals/:id/edit(.:format)              goals#edit
#                     goal GET      /goals/:id(.:format)                   goals#show
#                          PATCH    /goals/:id(.:format)                   goals#update
#                          PUT      /goals/:id(.:format)                   goals#update
#                          DELETE   /goals/:id(.:format)                   goals#destroy
#                   events GET      /events(.:format)                      events#index
#                          POST     /events(.:format)                      events#create
#                new_event GET      /events/new(.:format)                  events#new
#               edit_event GET      /events/:id/edit(.:format)             events#edit
#                    event GET      /events/:id(.:format)                  events#show
#                          PATCH    /events/:id(.:format)                  events#update
#                          PUT      /events/:id(.:format)                  events#update
#                          DELETE   /events/:id(.:format)                  events#destroy
#                    todos GET      /todos(.:format)                       todos#index
#                          POST     /todos(.:format)                       todos#create
#                 new_todo GET      /todos/new(.:format)                   todos#new
#                edit_todo GET      /todos/:id/edit(.:format)              todos#edit
#                     todo GET      /todos/:id(.:format)                   todos#show
#                          PATCH    /todos/:id(.:format)                   todos#update
#                          PUT      /todos/:id(.:format)                   todos#update
#                          DELETE   /todos/:id(.:format)                   todos#destroy
#            welcome_index GET      /welcome/index(.:format)               welcome#index
#                     root GET      /                                      welcome#index
#         new_user_session GET      /users/sign_in(.:format)               devise/sessions#new
#             user_session POST     /users/sign_in(.:format)               devise/sessions#create
#     destroy_user_session DELETE   /users/sign_out(.:format)              devise/sessions#destroy
#  user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        users/omniauth_callbacks#passthru {:provider=>/facebook/}
#   user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) users/omniauth_callbacks#(?-mix:facebook)
#            user_password POST     /users/password(.:format)              devise/passwords#create
#        new_user_password GET      /users/password/new(.:format)          devise/passwords#new
#       edit_user_password GET      /users/password/edit(.:format)         devise/passwords#edit
#                          PATCH    /users/password(.:format)              devise/passwords#update
#                          PUT      /users/password(.:format)              devise/passwords#update
# cancel_user_registration GET      /users/cancel(.:format)                devise/registrations#cancel
#        user_registration POST     /users(.:format)                       devise/registrations#create
#    new_user_registration GET      /users/sign_up(.:format)               devise/registrations#new
#   edit_user_registration GET      /users/edit(.:format)                  devise/registrations#edit
#                          PATCH    /users(.:format)                       devise/registrations#update
#                          PUT      /users(.:format)                       devise/registrations#update
#                          DELETE   /users(.:format)                       devise/registrations#destroy
#

Rails.application.routes.draw do
  resources :goals
  resources :events
  resources :todos
  get 'welcome/index'
  root 'welcome#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

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
