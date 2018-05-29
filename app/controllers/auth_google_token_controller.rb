require 'httparty'                                                             
require 'json'  

class AuthGoogleTokenController < ApplicationController
    skip_before_action :authenticate_user_from_token!
    def create
        validator = GoogleIDToken::Validator.new
        begin
            payload = validator.check(params[:id_token], "533966985417-qfdt7qfclu4h9si70n693fas25n1p4u1.apps.googleusercontent.com","533966985417-qfdt7qfclu4h9si70n693fas25n1p4u1.apps.googleusercontent.com") 
            puts "token validated!!"
            email = params[:email]
            puts email
            @user =User.find_by( email: email)
            if @user
                render json: @user.as_json(only: [:nameUser, :email, :authentication_token, :id]) , status: :created
            else
                url = "https://www.googleapis.com/oauth2/v3/tokeninfo?id_token=#{params["id_token"]}"                  
                response = HTTParty.get(url)  
                @user = User.create_user_for_google(response.parsed_response,email)                           
                @user.save
                render json: @user.as_json(only: [:nameUser, :email, :authentication_token, :id])
            end
            
        rescue GoogleIDToken::ValidationError => e
            puts "Cannot validate: #{e} \n"
        end
        
        
        
    end


end
