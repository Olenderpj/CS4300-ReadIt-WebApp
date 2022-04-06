class ApplicationController < ActionController::Base
    before_action :set_time_zone, if: :user_signed_in?
  
    private
        def set_time_zone
            Time.zone = current_user.remember_created_at
        end
end
