# == Route Map
#
#                    Prefix Verb URI Pattern                                                                              Controller#Action
#                      root GET  /                                                                                        static_pages#index
#        rails_service_blob GET  /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET  /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET  /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT  /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  get 'devis/new', to: 'quotation#new'
  get 'devis/show', to: 'quotation#show'
  get '/patisserie', to: 'products#index'
  resources :products, except: :index
  resources :items
  resources :charges, only: [:new, :create]

  root 'products#index'
  get '/unavailable', to: 'static_pages#unavailable'

  devise_for :users, controllers: { registrations: 'users/registrations',
                                    omniauth_callbacks: 'users/omniauth_callbacks' },
                     path: "client",
                     path_names: { sign_in: 'connexion',
                                   sign_out: 'deconnexion',
                                   sign_up: 'inscription' }
end
