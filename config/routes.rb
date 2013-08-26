JpBanks::Application.routes.draw do
  mount Docs::Engine   => '/'
  mount Api::Engine    => '/api'
  mount Admins::Engine => '/admins'

  get '/404' => 'exceptions#page_not_found'
  get '/500' => 'exceptions#internal_server_error'
end
