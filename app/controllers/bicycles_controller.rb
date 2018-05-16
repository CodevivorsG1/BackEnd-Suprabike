class BicyclesController < ApplicationController
  before_action :set_bicycle, only: [:show, :update, :destroy]
  #before_action :authenticate_store!, :except => [:show, :index]

  # GET /bicycles
  def index
    @bicycles = Bicycle.paginate(:page => params[:page], :per_page => 10)
    render json: @bicycles, each_serializer: BicycleSerializer
    @bicycles = Bicycle.all
  end

  
  # GET /bicycles/1
  def show
    render json: @bicycle, serializer: BicycleSerializer
  end

  # POST /bicycles
  def create
    @bicycle = Bicycle.new(bicycle_params)
    
    if @bicycle.save
      if params[:this_image] 
        @image = Image.create(name: params[:name] ,this_image: params[:this_image], bicycle_id: @bicycle.id)
      end
      render json: @bicycle, status: :created, location: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bicycles/1
  def update
    if @bicycle.update(bicycle_params)
      @image = Image.find_by(bicycle_id: @bicycle.id)
      if @image != nil
        @image.update(name: params[:name] ,this_image: params[:this_image], bicycle_id: @bicycle.id)
      end
      render json: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bicycles/1
  def destroy
    @bicycle.destroy
  end

  def send_bikes_to_users
    iduser = 1
    @user = User.find(iduser)
    Bicycles_mailer.catalogo(User.find(150)).deliver
    
=begin     User.find_each do |user| 
        Biycles_mailer.catalogo(user).deliver_later(wait_until: 168.hours.from_now)
    end  
=end


  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bicycle_params
      params.permit(:id_bicy, :brand_bicy, :material_bicy, :components_bicy, :price_bicy, :usetype_bicy, :description_bicy, :store_id)
    end

end
