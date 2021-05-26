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
    # resources :items, except: [:destroy]
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
    root 'games#top'
    get 'users/mypage' => 'users#show', as: 'mypage'
    # get 'customers/information/edit' => 'customers#edit', as: 'edit_information'
    # patch 'customers/information' => 'customers#update', as: 'update_information'
    # put 'customers/information' => 'customers#update'
    # get 'customers/unsubscribe' => 'customers#unsubscribe', as: 'confirm_unsubscribe'
    # patch 'customers/withdraw' => 'customers#withdraw', as: 'withdraw_customer'
    # put 'customers/withdraw' => 'customers#withdraw'
    # delete 'cart_items/destroy_all' => 'cart_items#destroy_all', as: 'destroy_all_cart_items'
    # post 'orders/confirm' => 'orders#confirm'
    # get 'orders/confirm' => 'orders#error'
    # get 'orders/thanks' => 'orders#thanks', as: 'thanks'

    resource :favorites, only: [:create, :destroy]
    # resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    # resources :items, only: [:index, :show] do
    #   resources :cart_items, only: [:create, :update, :destroy]
    # end
    # resources :cart_items, only: [:index]
    # resources :orders, only: [:new, :index, :create, :show]
  end
end
