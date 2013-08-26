module Api
  Engine.routes.draw do
    namespace :v1, defaults: { format: :json } do
      resources :banks, only: [:index, :show] do
        resources :branches, only: [:index, :show]
      end
    end
  end
end
