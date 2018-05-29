class BicycleToAssemblesController < ApplicationController
  before_action :set_bicycle_to_assemble, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!
  # GET /bicycle_to_assembles
  def index
    @bicycle_to_assembles = BicycleToAssemble.all

    render json: @bicycle_to_assembles
  end

  # GET /bicycle_to_assembles/1
  def show
    render json: @bicycle_to_assemble
  end

  # POST /bicycle_to_assembles
  def create
    @bicycle_to_assemble = BicycleToAssemble.new(bicycle_to_assemble_params)

    if @bicycle_to_assemble.save
      render json: @bicycle_to_assemble, status: :created, location: @bicycle_to_assemble
    else
      render json: @bicycle_to_assemble.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bicycle_to_assembles/1
  def update
    if @bicycle_to_assemble.update(bicycle_to_assemble_params)
      render json: @bicycle_to_assemble
    else
      render json: @bicycle_to_assemble.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bicycle_to_assembles/1
  def destroy
    @bicycle_to_assemble.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle_to_assemble
      @bicycle_to_assemble = BicycleToAssemble.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bicycle_to_assemble_params
      params.require(:bicycle_to_assemble).permit(:total_price, :user_id, :size , :type_of_use)
    end
end
