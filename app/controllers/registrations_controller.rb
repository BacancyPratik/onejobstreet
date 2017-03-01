class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_devise_permitted_parameters, if: :devise_controller?

    private

      def after_sign_in_path_for(resource)
        if @userexp=current_user.hasexp
         "/user_exps/new"
       else
         "/skills/new"
       end
      end

end
