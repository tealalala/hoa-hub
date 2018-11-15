Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  get '/ccrs' => 'ccrs#index'

  namespace :api do
    resources :users, except: [:new, :edit]
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
