class ApplicationController < ActionController::Base

  before_filter :configure_devise_permitted_parameters, if: :devise_controller?

 protected

 def configure_devise_permitted_parameters
   permitted_params = [:email, :password, :password_confirmation, :name,:contactnumber,:resume,:hasexp]

   if params[:action] == 'update'
     devise_parameter_sanitizer.permit(:account_update) {
       |u| u.permit(permitted_params << :current_password)
     }
   elsif params[:action] == 'create'
     devise_parameter_sanitizer.permit(:sign_up) {
       |u| u.permit(permitted_params)
     }
   end
 end
end
