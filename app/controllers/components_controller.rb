class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :update, :destroy]
  before_action :authenticate_user_from_token!, :except => [:show, :index]

  # GET /components
  def index
    @components = Component.paginate(:page => params[:page], :per_page => 10)

    render json: @components
  end

  # GET /components/1
  def show
    render json: @component
  end

  # POST /components
  def create
    @component = Component.new(component_params)

    if @component.save
      render json: @component, status: :created, location: @component
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /components/1
  def update
    if @component.update(component_params)
      render json: @component
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  # DELETE /components/1
  def destroy
    @component.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component
      @component = Component.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def component_params
      params.require(:component).permit(:type_component, :price_component, :description_component, :brand_component, :sizes_component, :material_component , :store_id) 
    end
end
