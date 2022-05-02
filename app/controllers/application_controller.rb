class ApplicationController < ActionController::Base
  include SessionsHelper
  attr_accessor :current_car
  private
    #confirms a logged_in user
    def logged_in_user
      unless  logged_in?
        store_location
        flash[:danger] = "Please log in first."
        redirect_to login_url
      end
    end

end
