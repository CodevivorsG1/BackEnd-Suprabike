class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_user_from_token!, :except => [ :create]
  before_action :verify_admin, only: [:index]
  # GET /users
  def index
    @users = User.paginate(:page => params[:page], :per_page => 100)

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      if params[:this_image] 
        Image.create(name: params[:name] ,this_image: params[:this_image], user_id: @user.id)
      end
      
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      @image = Image.find_by(user_id: @user.id)
      @image.update(name: params[:name] ,this_image: params[:this_image], user_id: @user.id)
      
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit( :email, :password,:idUser, :nameUser, :surnameUser, :genderUser, :phonenumUser, :celphoneUser, :city_id , :role)
    end

    def verify_admin
      if @user_email = params[:user_email].blank? && request.headers["X-User-Email"]
        params[:user_email] = @user_email
      end

      @user_email = params[:user_email].presence
      if User.respond_to? "find_by"
        @t_user = @user_email && User.find_by(email: @user_email)
      elsif User.respond_to? "find_by_email"
        @t_user = @user_email && User.find_by_email(@user_email)
      end

      if @t_user.role != "admin"
        render json: "No autorizado".to_json, status: :unauthorized
      end

    end
end
