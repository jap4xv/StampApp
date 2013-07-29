class PaymentNotificationsController < ApplicationController
  before_action :set_payment_notification, only: [:create]
  protect_from_forgery :except => [:create]
  # GET /payment_notifications
  # GET /payment_notifications.json

  def create
    PaymentNotification.create(payment_notification_params)
    render :nothing => true
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_notification_params
      params.require(:payment_notification).permit(:params, :stamp_id, :status, :transaction_id, :create)
    end
end
