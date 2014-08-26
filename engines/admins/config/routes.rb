module Admins
  Engine.routes.draw do
    resources :banks do
      resources :branches

      get 'branches/page/:page' => 'branches#index'
    end

    get 'banks/page/:page' => 'banks#index'

    root to: 'banks#index'
  end
end
