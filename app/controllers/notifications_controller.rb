class NotificationsController < ApplicationController
  before_action :set_notification, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user_from_token!
  # GET /notifications
  def index
    @notifications = Notification.all

    render json: @notifications
  end

  # GET /notifications/1
  def show
    render json: @notification
  end

  # POST /notifications
  def create
    @notification = Notification.new(notification_params)

    if @notification.save
      render json: @notification, status: :created, location: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notifications/1
  def update
    if @notification.update(notification_params)
      render json: @notification
    else
      render json: @notification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notifications/1
  def destroy
    @notification.destroy
  end

  def get_not
    @notifications = Notification.noti_by_user(params[:user_id],false)
    @count  = @notifications.count()
    render json: @notifications 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def notification_params
      params.require(:notification).permit(:description, :has_been_read, :store_id,:user_id, :technician_id)
    end
end
