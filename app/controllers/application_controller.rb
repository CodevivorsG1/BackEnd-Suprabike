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
=begin
      # Set the authentication token params if not already present,
      # see http://stackoverflow.com/questions/11017348/rails-api-authentication-by-headers-token
      if user_token = params[:user_token].blank? && request.headers["X-User-Token"]
        params[:user_token] = user_token
      end
      if user_email = params[:user_email].blank? && request.headers["X-User-Email"]
        params[:user_email] = user_email
      end

      user_email = params[:user_email].presence
      # See https://github.com/ryanb/cancan/blob/1.6.10/lib/cancan/controller_resource.rb#L108-L111
      if User.respond_to? "find_by"
        user = user_email && User.find_by(email: user_email)
      elsif User.respond_to? "find_by_email"
        user = user_email && User.find_by_email(user_email)
      end

      # Notice how we use Devise.secure_compare to compare the token
      # in the database with the token given in the params, mitigating
      # timing attacks.
      if user && Devise.secure_compare(user.authentication_token, params[:user_token])
        # Notice we are passing store false, so the user is not
        # actually stored in the session and a token is needed
        # for every request. If you want the token to work as a
        # sign in token, you can simply remove store: false.
        sign_in user, store: false
      else     
        render json: "No autorizado".to_json, status: :unauthorized
      end
=end
    end
    

end
