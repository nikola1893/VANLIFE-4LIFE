class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
    @booking = Booking.new

    @markers = Van.all.geocoded.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude
      }
    end
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    @van.user = current_user
    if @van.save
      redirect_to vans_path
    else
      render :new
    end
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :price_per_day, :image_link)
  end
end
