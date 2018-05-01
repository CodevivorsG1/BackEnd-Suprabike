class ApplicationController < ActionController::API

    before_action :authenticate_user_from_token!
    # This is Devise's authentication

    #def home
    #    @posts = Post.index #-> whatever you want here
    #end
    include ActionController::MimeResponds
    #acts_as_token_authentication_handler_for User
    #acts_as_token_authentication_handler_for Store
    #acts_as_token_authentication_handler_for Technician
        #def home
    #    @posts = Post.index #-> whatever you want here
    #end
    acts_as_token_authentication_handler_for User, fallback_to_devise: false
    #acts_as_token_authentication_handler_for Store
    #acts_as_token_authentication_handler_for Technician

  
    private
    
    def authenticate_user_from_token!
      user_email = params[:user_email].presence
      @user       = user_email && User.find_by_email(user_email)
  
      # Notice how we use Devise.secure_compare to compare the token
      # in the database with the token given in the params, mitigating
      # timing attacks.
      if @user && Devise.secure_compare(@user.authentication_token, params[:user_token])
        sign_in @user, store: false
      end
    end
    
   
end
