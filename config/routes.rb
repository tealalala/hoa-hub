Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  # Unnamespaced - Front-end with Embedded Ruby (.html.erb)
  resources :bylaws
  resources :ccrs

  # Namespaced 'api' - App Data (.json.jbuilder)
  namespace :api do
    resources :users
    resources :sessions, only: :create
    resources :action_by_address_users
    resources :association_managements
    resources :association_roles
    resources :associations
    resources :bylaws
    resources :ccrs
    resources :groups
    resources :property_addresses
    resources :roles
  end
end
