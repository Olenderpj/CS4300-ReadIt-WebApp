class ApplicationController < ActionController::Base
    #before_action :set_time_zone, if: :user_signed_in?
  
    private
        def set_time_zone
            Time.zone = current_user.remember_created_at
        end

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName, :birthMonth, :birthDay, :birthYear])
        # devise_parameter_sanitizer.for(:account_update) << :firstName, :lastName, :birthMonth, :birthDay, :birthYear
    end

    
end
