class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :update, :destroy]
  

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
      if params[:this_image] 
        @image = Image.create(name: params[:name] ,this_image: params[:this_image], component_id: @component.id)
      end
      render json: @component, status: :created, location: @component
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /components/1
  def update
    if @component.update(component_params)
      @image = Image.find_by(bicycle_id: @component.id)
      if @image != nil
        @image.update(name: params[:name] ,this_image: params[:this_image], component_id: @component.id)
      end
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
      params.require(:component).permit(:type_component, :price_component, :description_component, :brand_component, :sizes_component, :material_component , :store_id ,:part_of_bike,  :strength,
        :length,  :height,  :suspension,  :width,  :amount_of_relief,  :rin,  :profile,  :frame_size,  :rear_suspension,  :number_of_changes,  :num_plates,  :num_dish_teeth ) 
    end
end
