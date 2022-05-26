class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])

    @markers = Van.all.geocoded.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude
      }
    end
  end
end
