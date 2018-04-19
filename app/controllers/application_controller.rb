class ApplicationController < ActionController::Base
    #Prevent CSRF attacks by raising an exception
    protect_from_forgery with: :exception
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    
    
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :email, :password, :remember_me])
    end   
end
