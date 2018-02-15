class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
=======

  before_action :authenticate_user!

>>>>>>> dev
end
