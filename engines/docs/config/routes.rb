module Docs
  Engine.routes.draw do
    get 'docs' => 'pages#docs'
    get 'about' => 'pages#about'

    root to: 'pages#welcome'
  end
end
