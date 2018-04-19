class ForumsController < ApplicationController
  before_action :set_forum, only: [:show, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]
  

  # GET /forums
  def index
    @forums = Forum.paginate(:page => params[:page], :per_page => 1000)

    render json: @forums
  end

  # GET /forums/1
  def show
    render json: @forum
  end

  # POST /forums
  def create
    @forum = Forum.new(forum_params)

    if @forum.save
      render json: @forum, status: :created, location: @forum
    else
      render json: @forum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forums/1
  def update
    if @forum.update(forum_params)
      render json: @forum
    else
      render json: @forum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forums/1
  def destroy
    @forum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum
      @forum = Forum.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forum_params
      params.require(:forum).permit(:topic, :user_id)
    end
end
