Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  # Unnamespaced - Front-end with Embedded Ruby (.html.erb)
  resources :bylaws
  resources :ccrs

  # RESTful Routes - Namespaced 'api' - App Data (.json.jbuilder)
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

  # non-RESTful Routes - Namespaced 'api' - App Data (.json.jbuilder)
  namespace :api do
    # action_by_address_users
    get '/filtered_architecture_is_true' => 'action_by_address_users#filtered_architecture_is_true_index'
    get '/filtered_vote_is_true' => 'action_by_address_users#filtered_vote_is_true_index'
    get '/filtered_violations_is_true' => 'action_by_address_users#filtered_violations_is_true_index'

    # association roles
    get '/filtered_board_is_true' => 'association_roles#filtered_board_is_true_index'
    
    # bylaws
    get '/filtered_bylaws_is_false' => 'bylaws#filtered_bylaws_is_false_index'
    get '/filtered_bylaws_is_true' => 'bylaws#filtered_bylaws_is_true_index'

    # ccrs
    get '/filtered_ccrs_is_false' => 'ccrs#filtered_ccrs_is_false_index'
    get '/filtered_ccrs_is_true' => 'ccrs#filtered_ccrs_is_true_index'

  end
end
