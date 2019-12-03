class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!


    protected

 def configure_permitted_parameters
     added_attrs = [ :email, :name, :password, :password_confirmation ]
     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
     devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  def after_sign_in_path_for(resource)
  	  user_path(resource)
  end
  def after_sign_out_path_for(resource)
      root_path
  end
end
