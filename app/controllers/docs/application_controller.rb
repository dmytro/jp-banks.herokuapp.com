module Docs
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    helper ApplicationHelper
  end
end
