class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @van = Van.find(params[:van_id])
    @booking.van = @van
    if @booking.save
      redirect_to dashboard_path
    else
      render "vans/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
