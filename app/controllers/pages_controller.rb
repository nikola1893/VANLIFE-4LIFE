class PagesController < ApplicationController
  def home
  end

  def dashboard
    @my_vans = Van.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
  end

end
