require 'httparty'                                                             
require 'json'  

class AuthGoogleTokenController < ApplicationController
    
    def create
        validator = GoogleIDToken::Validator.new
        begin
            payload = validator.check(params[:id_token], "265848036385-8nb02cph4d85ca74vakqq463ggif52gc.apps.googleusercontent.com","265848036385-8nb02cph4d85ca74vakqq463ggif52gc.apps.googleusercontent.com") 
            puts "token validated!!"
            email = params[:email]
            puts email

            url = "https://www.googleapis.com/oauth2/v3/tokeninfo?id_token=#{params["id_token"]}"                  
            response = HTTParty.get(url)  
            @user = User.create_user_for_google(response.parsed_response,email)      
            tokens = @user.authentication_token                      
            @user.save
            render json: @user.as_json(only: [ :email, :authentication_token]) , status: :created
        rescue GoogleIDToken::ValidationError => e
            puts "Cannot validate: #{e} \n"
        end
        
        
        
    end


end
