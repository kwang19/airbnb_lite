class ApplicationController < ActionController::Base
  before_action :authenticate_host!

  protect_from_forgery with: :exception
end
