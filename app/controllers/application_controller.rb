class ApplicationController < ActionController::API
    #def home
    #    @posts = Post.index #-> whatever you want here
    #end
    include ActionController::MimeResponds
    #acts_as_token_authentication_handler_for User
    #acts_as_token_authentication_handler_for Store
    #acts_as_token_authentication_handler_for Technician
end
