class ByciclesController < ApplicationController
  before_action :set_bycicle, only: [:show, :edit, :update, :destroy]

  # GET /bycicles
  # GET /bycicles.json
  def index
    @bycicles = Bycicle.all
  end

  # GET /bycicles/1
  # GET /bycicles/1.json
  def show
  end

  # GET /bycicles/new
  def new
    @bycicle = Bycicle.new
  end

  # GET /bycicles/1/edit
  def edit
  end

  # POST /bycicles
  # POST /bycicles.json
  def create
    @bycicle = Bycicle.new(bycicle_params)

    respond_to do |format|
      if @bycicle.save
        format.html { redirect_to @bycicle, notice: 'Bycicle was successfully created.' }
        format.json { render :show, status: :created, location: @bycicle }
      else
        format.html { render :new }
        format.json { render json: @bycicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bycicles/1
  # PATCH/PUT /bycicles/1.json
  def update
    respond_to do |format|
      if @bycicle.update(bycicle_params)
        format.html { redirect_to @bycicle, notice: 'Bycicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @bycicle }
      else
        format.html { render :edit }
        format.json { render json: @bycicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bycicles/1
  # DELETE /bycicles/1.json
  def destroy
    @bycicle.destroy
    respond_to do |format|
      format.html { redirect_to bycicles_url, notice: 'Bycicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bycicle
      @bycicle = Bycicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bycicle_params
      params.require(:bycicle).permit(:brand, :material, :components, :price, :use_type, :description)
    end
end
