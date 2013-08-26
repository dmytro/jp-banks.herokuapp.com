require 'sidekiq/web'

module Admins
  Engine.routes.draw do
    mount Sidekiq::Web   => '/sidekiq'

    resources :banks do
      resources :branches

      get 'branches/page/:page' => 'branches#index'
    end

    get 'banks/page/:page' => 'banks#index'

    root to: 'banks#index'
  end
end
