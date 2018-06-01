class AssemblePartsController < ApplicationController
  before_action :set_assemble_part, only: [:show, :update, :destroy]

  # GET /assemble_parts
  def index
    @assemble_parts = AssemblePart.all

    render json: @assemble_parts
  end

  # GET /assemble_parts/1
  def show
    render json: @assemble_part
  end

  # POST /assemble_parts
  def create
    @assemble_part = AssemblePart.new(assemble_part_params)
    @component = Component.find(params[:component_id])
    @store = @component.store

    Transaction.create(date_transaction: "25/05/2016",type_transaction: "Compra",total_transaction: @component.price_component,store_id: @store.id )
    if @assemble_part.save
      render json: @assemble_part, status: :created, location: @assemble_part
    else
      render json: @assemble_part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assemble_parts/1
  def update
    if @assemble_part.update(assemble_part_params)
      render json: @assemble_part
    else
      render json: @assemble_part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assemble_parts/1
  def destroy
    @assemble_part.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assemble_part
      @assemble_part = AssemblePart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assemble_part_params
      params.require(:assemble_part).permit(:component_id , :bicycle_to_assemble_id)
    end
end
