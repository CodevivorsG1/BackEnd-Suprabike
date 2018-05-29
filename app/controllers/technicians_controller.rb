class TechniciansController < ApplicationController
  before_action :set_technician, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!
  # GET /technicians
  def index
    @technicians = Technician.paginate(:page => params[:page], :per_page => 10)

    render json: @technicians
  end

  # GET /technicians/1
  def show
    render json: @technician
  end

  # POST /technicians
  def create
    @technician = Technician.new(technician_params)

    if @technician.save
      if params[:this_image] 
        Image.create(name: params[:name] ,this_image: params[:this_image], technician_id: @technician.id)
      end
      render json: @technician, status: :created
    else
      render json: @technician.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /technicians/1
  def update
    if @technician.update(technician_params)
      @image = Image.find_by(technician_id: @technician.id)
      if @image != nil
        @image.update(name: params[:name] ,this_image: params[:this_image], technician_id: @technician.id)
      end
      render json: @technician
    else
      render json: @technician.errors, status: :unprocessable_entity
    end
  end

  # DELETE /technicians/1
  def destroy
    @technician.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technician
      @technician = Technician.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def technician_params
      params.permit(:email, :password, :id_technical, :NameTec, :SurnameTec, :typeworktec, :costhourtec, :phonenumtec, :city_id) 
    end
end
