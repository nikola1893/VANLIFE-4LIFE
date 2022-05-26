class VansController < ApplicationController
  def index
    @vans = Van.all
    if params[:query].present?
      @vans = Van.near(params[:query], 10)
    end
  end

  def show
    @van = Van.find(params[:id])

    @markers =[@van].map do |van|
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
      redirect_to vans_path, notice: 'Van was successfully created.'
    else
      render :new
    end
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :price_per_day, :address, photos: [])
  end
end
