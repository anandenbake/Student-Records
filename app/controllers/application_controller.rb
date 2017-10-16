class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if admin_signed_in?
  		root_path
  	else
     profiles_path
 end
     
    end



  def after_sign_up_path_for(resource)
  	if admin_signed_in?
  		root_path
  	else
     profiles_path
  end
 end

end
