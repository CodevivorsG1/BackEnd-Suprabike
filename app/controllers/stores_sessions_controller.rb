class StoresSessionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!
    def create
        
        user = Store.where(email: params[:email]).first
        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [ :email, :authentication_token]) , status: :created
        else
            
                head(:unauthorized)
        end
            
        
    end

    def destroy
        sign_out @store
        redirect_to(:stores , message:"Logged out")
    end



end