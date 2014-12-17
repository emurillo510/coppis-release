class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
	def twitter

     user = User.from_omniauth(request.env["omniauth.auth"])
  
     if user.persisted?
          sign_in user , :event => :authentication


          
          if user.email.blank?
          redirect_to edit_user_registration_path
          else
          redirect_to root_path
          end
     else
     	     session["devise.user_attributes"] = user.attributes
     		   redirect_to new_user_registration_url
     end
	end

  def new
    
  end


  private
  def omniauth_params
    params.require(:auth).permit(:provider,:uid, :oauth_token, :oauth_verifier)
  end
end
