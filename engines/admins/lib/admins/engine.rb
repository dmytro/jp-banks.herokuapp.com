module Admins
  class Engine < ::Rails::Engine
    isolate_namespace Admins

    middleware.use Rack::Auth::Basic do |user, password|
      [user, password] == [ENV['HTTP_USER'], ENV['HTTP_PASSWORD']]
    end if Rails.env.production?
  end
end
