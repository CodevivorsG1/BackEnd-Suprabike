class UsersSessionsController < ApplicationController
    def create
        user = User.where(email: params[:email]).first
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [ :email, :authentication_token]) , status: :created
    
        else
            head(:unauthorized)
        end
    end

    def destroy
        sign_out @user
        redirect_to(:users , message:"Logged out")

    end

    def auth_google_token
        validator = GoogleIDToken::Validator.new
        begin
            payload = validator.check(token, required_audience, optional_client_id)
            email = payload['email']
        rescue GoogleIDToken::ValidationError => e
            report "Cannot validate: #{e}"
        end
    end

end