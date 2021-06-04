Rails.application.routes.draw do
  devise_for :admin, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
  }
  namespace :admins do
    # get 'top' => 'homes#top', as: 'top'
    # get 'search' => 'homes#search', as: 'search'
    # get 'customers/:customer_id/orders' => 'orders#index', as: 'customer_orders'
    # resources :customers, only: [:index, :show, :edit, :update]
    resources :games
    # resources :genres, only: [:index, :create, :edit, :update]
    # resources :orders, only: [:index, :show, :update] do
    #   resources :order_details, only: [:update]
    # end
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }
  
    scope module: :users do
      get 'users/mypage/:id' => 'users#show', as: 'mypage'
      get 'users/information/edit' => 'users#edit', as: 'edit_information'
      patch 'users/information' => 'users#update', as: 'update_information'
      put 'users/information' => 'users#update'
      post 'users/comment' => 'comments#create', as: 'user_comments'
      delete 'users/comment/:id' => 'comments#destroy', as: 'user_comment'
      # put 'customers/withdraw' => 'customers#withdraw'

      resource :favorites, only: [:create, :destroy]
      resources :games, only: [:index, :show]
      # resources :comments, only: [:create, :destroy]
      # resources :items, only: [:index, :show] do
      #   resources :cart_items, only: [:create, :update, :destroy]
      # end
      # resources :orders, only: [:new, :index, :create, :show]
      
      resource :relationships, only: [:create, :destroy]
        get 'followings' => 'relationships#followings', as: 'followings'
        get 'followers' => 'relationships#followers', as: 'followers'
    end
    
      root 'homes#top'
      get 'about' => 'homes#about'
end
