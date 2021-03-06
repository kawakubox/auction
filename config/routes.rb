# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: :create
      resources :auctions, only: :create
    end
  end

  resources :auctions, only: :create do
    resources :bids, only: :create
  end
end
