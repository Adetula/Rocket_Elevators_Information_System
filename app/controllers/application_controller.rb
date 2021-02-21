class ApplicationController < ActionController::Base
#    before_action :configure_permitted_parameters, if: :devise_controller?
#     #Prevent CSRF attacks by raising an exception.
#     #For APIs, you sau want to use :null_session instead.
#     protect_from_forgery with: :exception

#     #To permit new custom attributes to be verified as attributes permitted by the form
#     def configure_permitted_parameters
#         devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:first_name, :last_name, :email, :password, :password_configuration)}

#     end
    protect_from_forgery prepend: true, with: :exception
    skip_before_action :verify_authenticity_token
end
