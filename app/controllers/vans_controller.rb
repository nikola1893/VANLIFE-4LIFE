class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
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
    params.require(:van).permit(:title, :description, :price_per_day, :image_link)
  end
end
