class VansController < ApplicationController
  def index
    @vans = Van.all
  end

  def show
    @van = Van.find(params[:id])
  end

  def new
    @van = Van.new
    if @van.save
      redirect_to @van, notice: 'Van was successfully created.'
    else
      render :new
    end
  end

  def create
    @van = Van.new()
  end

  private

  def van_params
    params.require(:van).permit(:title, :descriptiom, :price_per_day)
  end
end
