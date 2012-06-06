class ApplicationController < ActionController::Base
  protect_from_forgery

before_filter :authorize
 @time = Time.now.year

  protected

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, alert: "Please log in"
      end
    end
end

