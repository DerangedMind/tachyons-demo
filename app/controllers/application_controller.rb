class ApplicationController < ActionController::Base
  include ComponentHelper
  protect_from_forgery with: :exception
end
