class UsersSessionsController < ApplicationController
    def create
        @user = User.where(email: params[:email]).first
        if @user&.valid_password?(params[:password])
            render json: @user.as_json(only: [ :email, :authentication_token, :id]) , status: :created
    
        else
            head(:unauthorized)
        end
    end

    def destroy
        sign_out @user

    end



end