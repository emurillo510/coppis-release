class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
	def twitter
     user = User.from_omniauth(request.env["omniauth.auth"])
     logger.debug "USER2 #{user}"

     if user.persisted?
     	    flash.notice = "Signed in!"
          sign_in user , :event => :authentication
          redirect_to edit_user_registration_path
     else
     	     session["devise.user_attributes"] = user.attributes
     		   redirect_to new_user_registration_url
     end
	end

  private
  def omniauth_params
    params.require(:auth).permit(:provider,:uid, :oauth_token, :oauth_verifier)
  end
end
